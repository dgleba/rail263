class Passenger < ActiveRecord::Base
  belongs_to :rental_record
  belongs_to :pasenger_list
  
  accepts_nested_attributes_for :pasenger_list
  #accepts_nested_attributes_for :pasenger_list, :reject_if => :all_blank

end

