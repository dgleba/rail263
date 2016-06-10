class Passenger < ActiveRecord::Base
  belongs_to :rental_record
end
