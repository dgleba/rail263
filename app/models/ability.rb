class Ability
  include CanCan::Ability

  def initialize(user)

    if user.sc_admin?
      can :manage, :all
      can :access, :rails_admin       # only allow admin users to access Rails Admin
      can :dashboard                  # allow access to dashboard

    # remember to add roles to user.rb
    #
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
      can :read, [ Vehicle, RentalRecord, Passenger]
      can :create, [ Customer,Vehicle, RentalRecord, Passenger]
      can :update, [  RentalRecord,  Passenger]
      
      # limit view and edit of Customer to only the user who created it.. 2016-10-29
      #        see ...\rails-know\rail303-seeownrecords\rail303b-userseesownrecords.txt
      can [:read, :create, :update], Customer, :user_id => user.id

      # no luck.. NoMethodError in CustomersController#index undefined method `ransack' for nil:NilClass
      # can :read, Customer do |c|
        # Customer.try(:user) == user
      # end
      
    elsif user.sc_readonly?
      can :read, Vehicle

    elsif user.sc_minimal?
      #can :read, [Role]
    
    elsif user.sc_create?
      can :read, [Role]
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

