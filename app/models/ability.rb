class Ability
  include CanCan::Ability

  def initialize(user)

    if user.sc_admin?
      can :manage, :all
      can :access, :rails_admin       # only allow admin users to access Rails Admin
      can :dashboard                  # allow access to dashboard

    # http://hibbard.eu/authentication-with-devise-and-cancancan-in-rails-4-2/  
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
      can :read, [Customer, Vehicle, RentalRecord, Passenger]
      can :create, [Customer, Vehicle, RentalRecord, Passenger]
      can :update, [Customer, Vehicle, Passenger] 

    elsif user.sc_readonly?
      can :read, Vehicle
      
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

