class RentalRecord < ActiveRecord::Base
  belongs_to :customer
  belongs_to :vehicle

  has_many :passengers
  has_many :pasenger_lists, :through => :passengers, :class_name => 'PasengerList'

  accepts_nested_attributes_for :pasenger_lists
  accepts_nested_attributes_for :passengers,  allow_destroy: true
  #accepts_nested_attributes_for :passengers, reject_if: :all_blank, allow_destroy: true

  # use audited for model record history
  audited
  
  default_scope {order('id DESC')}

  def to_s
    # show columns contents, not record object like: 	#<Vehicle:0x007f343b3f2890>	2016-06-08	Details	Edit	Delete
    # http://stackoverflow.com/questions/4829909/how-do-i-print-out-the-contents-of-an-object-in-rails-for-easy-debugging
    #"Name:#{self.name} Age:#{self.age} Weight: #{self.weight}"
    "##{id}, start:#{start_date}"
  end


end
