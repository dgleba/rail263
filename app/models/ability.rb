class Ability
  include CanCan::Ability

  def initialize(user)

    if user.admin?
      can :manage, :all
      can :access, :rails_admin       # only allow admin users to access Rails Admin
      can :dashboard                  # allow access to dashboard

    elsif user.seller?
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

    elsif user.regular?
      can :read, [Customer, Vehicle, RentalRecord]
      can :create, [Customer, Vehicle, RentalRecord]
      can :update, [Customer, Vehicle] 

    elsif user.sc_readonly?
      can :read, Customer
      
    end

  end
  
  
# sc_minimal  
# sc_readonly  
# sc_create
# sc_regular
# sc_supervisor
# sc_delete
# sc_admin

  
end

