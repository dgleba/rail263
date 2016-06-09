class ChangeColumnOutputInRentalRecords < ActiveRecord::Migration
  def change
    change_column :rental_records, :output, :text
  end
end
