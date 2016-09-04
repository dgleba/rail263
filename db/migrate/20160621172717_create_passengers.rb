class CreatePassengers < ActiveRecord::Migration
  def change
    create_table :passengers do |t|
      t.string :name
      t.string :description
      t.text :output
      t.belongs_to :rental_record, index: true, foreign_key: true
      t.references :pasenger_list, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
