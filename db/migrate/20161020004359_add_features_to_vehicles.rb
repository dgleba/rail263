class AddFeaturesToVehicles < ActiveRecord::Migration
  def change
    add_column :vehicles, :features, :string
  end
end
