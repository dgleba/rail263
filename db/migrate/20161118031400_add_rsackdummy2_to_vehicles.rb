class AddRsackdummy2ToVehicles < ActiveRecord::Migration
  def change
    add_column :vehicles, :rsackdummy2, :string
  end
end
