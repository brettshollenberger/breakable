class CreateUserStoriesTags < ActiveRecord::Migration
  def change
    create_table :user_stories_tags do |t|
      t.integer :tag_id, :null => false
      t.integer :user_story_id, :null => false

      t.timestamps
    end
  end
end
