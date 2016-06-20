class CreateRentalRecords < ActiveRecord::Migration
  def change
    create_table :rental_records do |t|
      t.references :customer, index: true, foreign_key: true
      t.references :vehicle, index: true, foreign_key: true
      t.date :start_date
      t.date :end_date
      t.datetime :lastUpdated

      t.timestamps null: false
    end
  end
end
