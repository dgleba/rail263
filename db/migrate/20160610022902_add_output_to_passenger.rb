class AddOutputToPassenger < ActiveRecord::Migration
  def change
    add_column :passengers, :output, :text
  end
end
