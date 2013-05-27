class CreateDevelopers < ActiveRecord::Migration
  def change
    create_table :developers do |t|
      t.string :name, :null => false
      t.integer :hourly_rate, :null => false

      t.timestamps
    end
  end
end
