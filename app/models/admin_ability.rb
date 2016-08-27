# in models/admin_ability.rb
class AdminAbility
  include CanCan::Ability
  def initialize(user)

    if user.sc_admin?
      can :manage, :all
      can :access, :rails_admin       # only allow admin users to access Rails Admin
      can :dashboard                  # allow access to dashboard

    elsif user.sc_seller?
      can :read, Customer
      can :create, Customer
      can :update, Customer do |customer|
        Customer.try(:user) == user
      end
      can :destroy, Customer do |customer|
        Customer.try(:user) == user
      end
      can :access, :rails_admin       # only allow admin users to access Rails Admin
      can :dashboard                  # allow access to dashboard

    elsif user.sc_regular?
      can :access, :rails_admin       # only allow admin users to access Rails Admin
      can :dashboard                  # allow access to dashboard
      can :read, [Customer, Vehicle, Passenger] 
      cannot :create, [Customer, Vehicle, Passenger] 
      cannot :update, [Customer, Vehicle, Passenger] 
      # Performed checks for `collection` scoped actions:
      can :export, [Customer, Vehicle, Passenger] 
      can :history, [Customer, Vehicle, Passenger]        # for HistoryIndex
      # Performed checks for `member` scoped actions:
      #can :history, [Customer, Vehicle, Passenger]        # for HistoryShow
      can :show_in_app, [Customer, Vehicle, Passenger] 
      
    elsif user.sc_readonly?
      can :read, Vehicle
      
    end

    end
  
end