class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :description
      t.boolean :done
      t.belongs_to :project, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
