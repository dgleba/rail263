class PasengerList < ActiveRecord::Base
  belongs_to :passenger


  
  def to_s
    # show columns contents, not record object like: 	#<Vehicle:0x007f343b3f2890>	2016-06-08	Details	Edit	Delete
    # http://stackoverflow.com/questions/4829909/how-do-i-print-out-the-contents-of-an-object-in-rails-for-easy-debugging
    #"Name:#{self.name} Age:#{self.age} Weight: #{self.weight}"
    "#{name}, #{clocknum}"
  end

  
  # tolabel defines what to show in the association dropdown..
  # http://stackoverflow.com/questions/6334582/simple-form-association-custom-label-name
  def to_label
     "#{name}_#{clocknum}"
  end

  
end
