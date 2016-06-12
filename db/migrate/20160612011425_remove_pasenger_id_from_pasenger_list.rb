class RemovePasengerIdFromPasengerList < ActiveRecord::Migration
  def change
    remove_column :pasenger_lists, :passenger_id, :string
  end
end
