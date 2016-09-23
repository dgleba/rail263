module CustomerHelper
  
  # search most columns in passengers table
  def most_customers_cont
    most_attributes = []
    attributes_to_exclude = [
      "created_at",
      "updated_at",
      "discount",
      "id"     
    ]
    Customer.column_names.each do |column_name|
      most_attributes << column_name unless column_name.in?(attributes_to_exclude)
    end
    most_attributes.join("_or_") + "_cont_all"
  end
 
   
end
