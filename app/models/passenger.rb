class Passenger < ActiveRecord::Base
  belongs_to :rental_record
  belongs_to :pasenger_list
  
  attr_accessor :searchm
  
  before_save :searchm
  
  accepts_nested_attributes_for :pasenger_list
  #accepts_nested_attributes_for :pasenger_list, :reject_if => :all_blank

  # http://stackoverflow.com/questions/13309062/searching-multiple-fields-with-ransack/13311237#13311237

  # use audited for model record history
  audited
  
  def searchm
    # i also tried searchm_cont
    [rental_record_id, pasenger_list.name, pasenger_list.clocknum].reject(&:blank?).join("$|$")
  end
  
  def srch
    [ rental_record_id, pasenger_list.name, pasenger_list.clocknum ].compact.to_sentence
  end

end

