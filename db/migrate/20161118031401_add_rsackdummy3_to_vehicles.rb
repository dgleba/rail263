class AddRsackdummy3ToVehicles < ActiveRecord::Migration
  def change
    add_column :vehicles, :rsackdummy3, :string
  end
end
