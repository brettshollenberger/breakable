class CreateStoryFiles < ActiveRecord::Migration
  def change
    create_table :story_files do |t|
      t.string :filename, :null => false
      t.integer :user_story_id, :null => false

      t.timestamps
    end
  end
end
