class AddRsackdummy3ToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :rsackdummy3, :string
  end
end
