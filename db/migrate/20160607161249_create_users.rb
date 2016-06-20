class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :crypted_password
      t.string :salt
      t.belongs_to :role, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
