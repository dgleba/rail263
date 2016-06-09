class RentalRecord < ActiveRecord::Base
  belongs_to :customer
  belongs_to :vehicle
end
