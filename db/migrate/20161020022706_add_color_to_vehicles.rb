class AddColorToVehicles < ActiveRecord::Migration
  def change
    add_column :vehicles, :color, :string
  end
end
