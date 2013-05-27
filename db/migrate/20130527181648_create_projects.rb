class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title, :null => false
      t.integer :total_cost
      t.datetime :due_date
      t.integer :estimated_cost
      t.integer :client_id, :null => false

      t.timestamps
    end
  end
end
