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

 
  def text1_customers_cont
  #
  # search  * text *  columns in .. table
  #
  # http://stackoverflow.com/questions/17980410/rails-get-the-names-of-all-a-tables-columns-of-a-certain-data-type-column
  # ModelClass.columns.select{ |c| c.type == :integer }.map(&:name)
  #
    most_attributes = []
    attributes_to_exclude = [
      "created_at",
      "updated_at"
           
    ]
    Customer.columns.select{ |c| c.type == :string || c.type == :text }.map(&:name).each do |column_name|
      most_attributes << column_name unless column_name.in?(attributes_to_exclude)
    end
    most_attributes.join("_or_") + "_cont_any"
  end

  def text2_customers_cont
  #
  # search  * text *  columns in .. table
  #
  # http://stackoverflow.com/questions/17980410/rails-get-the-names-of-all-a-tables-columns-of-a-certain-data-type-column
  # ModelClass.columns.select{ |c| c.type == :integer }.map(&:name)
  #
    most_attributes = []
    attributes_to_exclude = [
      "created_at",
      "updated_at",
      "rsackdummy2"     
    ]
    Customer.columns.select{ |c| c.type == :string || c.type == :text }.map(&:name).each do |column_name|
      most_attributes << column_name unless column_name.in?(attributes_to_exclude)
    end
    most_attributes.join("_or_") + "_cont_any"
  end

  
  def text3_customers_cont
  #
  # search  * text *  columns in .. table
  #
  # http://stackoverflow.com/questions/17980410/rails-get-the-names-of-all-a-tables-columns-of-a-certain-data-type-column
  # ModelClass.columns.select{ |c| c.type == :integer }.map(&:name)
  #
    most_attributes = []
    attributes_to_exclude = [
      "created_at",
      "updated_at",
      "rsackdummy3"     
    ]
    Customer.columns.select{ |c| c.type == :string || c.type == :text }.map(&:name).each do |column_name|
      most_attributes << column_name unless column_name.in?(attributes_to_exclude)
    end
    most_attributes.join("_or_") + "_cont_any"
  end

  
end
