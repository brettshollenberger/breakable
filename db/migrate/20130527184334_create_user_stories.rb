class CreateUserStories < ActiveRecord::Migration
  def change
    create_table :user_stories do |t|
      t.string :title, :null => false
      t.string :story, :null => false
      t.datetime :due_date, :null => false
      t.integer :estimated_cost, :null => false
      t.integer :actual_cost
      t.integer :project_id, :null => false
      t.integer :developer_id, :null => false

      t.timestamps
    end
  end
end
