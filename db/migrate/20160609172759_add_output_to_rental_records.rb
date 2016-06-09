class AddOutputToRentalRecords < ActiveRecord::Migration
  def change
    add_column :rental_records, :output, :string
  end
end
