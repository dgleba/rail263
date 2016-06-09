class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :name
      t.string :veh_reg_no
      t.string :category
      t.string :desc
      t.binary :photo
      t.decimal :daily_rate

      t.timestamps null: false
    end
  end
end
