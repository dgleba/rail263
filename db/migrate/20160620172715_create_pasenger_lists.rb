class CreatePasengerLists < ActiveRecord::Migration
  def change
    create_table :pasenger_lists do |t|
      t.string :clocknum
      t.string :name
      t.boolean :active

      t.timestamps null: false
    end
  end
end
