module PassengerHelper
  
  # each most.._cont expression must be unique..
  # if not, the each box will be filled with one term
  # add dummy columns to database if necessary.

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
  # each most.._cont expression must be unique..
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
