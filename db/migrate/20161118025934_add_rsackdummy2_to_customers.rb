class AddRsackdummy2ToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :rsackdummy2, :string
  end
end
