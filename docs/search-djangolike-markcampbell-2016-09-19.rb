
terms = ["truck", "van"]

module DjangoSearchGenerator
  # expected query:
  #
  # SELECT *
  # FROM vehicles
  # WHERE
  # (
  #  veh_reg_no LIKE '%truck%'
  #  OR
  #  category LIKE '%truck%'
  # )
  # AND
  # (veh_reg_no LIKE '%van%' OR category LIKE '%van%')
  def self.call(terms)
    where_clause_string = ""
    columns = [:category, :desc]
    terms.each_with_index do |term, index|
      where_clause_string << "("
      columns.each_with_index do |column, columns_index|
        where_clause_string << "#{column} LIKE '%#{term}%'"
    
        unless columns.size == columns_index + 1
          where_clause_string << " OR "    
        end
      end
      where_clause_string << ")"
    
      # check if we're not at the last term record
      unless terms.size == index + 1
        where_clause_string << " AND "    
      end
    end

    Vehicle.where(where_clause_string)
  end

  def self.call_with_ransack(terms)
    relationship = Vehicle.scoped
    terms.each do |term|
      relationship.merge(Vehicle.ransack(:category_or_desc_cont => term).result)
    end
    relationship
  end
end

# Vehicle.django_search(["truck", "van"])
# or with dependency injection
# DjangoSearchGenerator.call(Vehicle, terms)

puts %q{Just do DjangoSearchGenerator.call(["van", "truck"])}
