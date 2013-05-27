class CreateTagsUserStories < ActiveRecord::Migration
  def change
    create_table :tags_user_stories do |t|
      t.integer :tag_id, :null => false
      t.integer :user_story_id, :null => false

      t.timestamps
    end
  end
end
