class AddPasengerListToPassenger < ActiveRecord::Migration
  def change
    add_reference :passengers, :pasenger_list, index: true, foreign_key: true
  end
end
