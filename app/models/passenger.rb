class Passenger < ActiveRecord::Base
  belongs_to :rental_record
  belongs_to :pasenger_list
end
