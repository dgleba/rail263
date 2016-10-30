class Customer < ActiveRecord::Base

  belongs_to :user
 
  #not needed here since the table name follows rails convention. just showing the syntax..
  self.table_name = 'customers'

  default_scope {order('id DESC')}
    
  # not used 2016-10-28_Fri_17.02-PM,  http://www.justinweiss.com/articles/search-and-filter-rails-models-without-bloating-your-controller/
  scope :namefilter, -> (name) { where("name like ?", "#{name}%")}
  
  # use audited for model record history
  audited

  has_paper_trail
    
  def self.mnm
    Customer.find_by_sql "select  substr(c.name,1,4) as nm , c.* from customers as c;"
  end

  def to_s
    # show columns contents, not record object like:  #<Vehicle:0x007f343b3f2890> 2016-06-08  Details Edit  Delete
    # http://stackoverflow.com/questions/4829909/how-do-i-print-out-the-contents-of-an-object-in-rails-for-easy-debugging
    #"Name:#{self.name} Age:#{self.age} Weight: #{self.weight}"
    "##{id},#{name},#{address}"
  end

 
end


