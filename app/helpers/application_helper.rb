module ApplicationHelper
  # override default kaminari pagination method to use twitter-bootstrap theme
  def paginate(objects, options={})
    options.reverse_merge!(theme: 'twitter-bootstrap-3')
    super(objects, options)
  end
  
  
  # search most columns in passengers table
  def most_passengers_cont
    most_attributes = []
    attributes_to_exclude = [
      "created_at",
      "updated_at",
      "id"     
    ]
    Passenger.column_names.each do |column_name|
      most_attributes << column_name unless column_name.in?(attributes_to_exclude)
    end
    most_attributes.join("_or_") + "_cont_any"
  end
 
  # search most columns in passengers table
  def most2_passengers_cont
    most_attributes = []
    attributes_to_exclude = [
      "created_at",
      "updated_at",
      "rental_record_id",
      "id"     
    ]
    Passenger.column_names.each do |column_name|
      most_attributes << column_name unless column_name.in?(attributes_to_exclude)
    end
    most_attributes.join("_or_") + "_cont_any"
  end
  
 

  # search most columns in passengers table
  # this here as a copy...
  def zz_most_passengers_cont
    most_attributes = []
    attributes_to_exclude = [
      "created_at",
      "updated_at",
      "rental_record_id",
      "passenger_list_id",
      "id"
    ]
    Passenger.column_names.each do |column_name|
      most_attributes << column_name unless column_name.in?(attributes_to_exclude)
    end
    most_attributes.join("_or_") + "_cont_any"
  end


  
  # search some columns in passengers table
  # this is not done..
  def some_passengers_cont
    some_attributes = []
    attributes_to_exclude = [
      "created_at",
      "updated_at",
      "id"
    ]
    Passenger.column_names.each do |column_name|
      most_attributes << column_name unless column_name.in?(attributes_to_exclude)
    end
    most_attributes.join("_or_") + "_cont_any"
  end
  
end
