class RentalRecord < ActiveRecord::Base
  belongs_to :customer
  belongs_to :vehicle
  
  has_many :passengers
  accepts_nested_attributes_for :passengers, reject_if: :all_blank, allow_destroy: true
  
end

