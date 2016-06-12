class PasengerList < ActiveRecord::Base
  belongs_to :passenger


  # tolabel defines what to show in the association dropdown..
  # http://stackoverflow.com/questions/6334582/simple-form-association-custom-label-name
  def to_label
     "#{name}_#{clocknum}"
  end

  
end
