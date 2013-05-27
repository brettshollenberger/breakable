class TagsUserStories < ActiveRecord::Base
  attr_accessible :tag_id, :user_story_id
  validates :tag_id, :user_story_id, :numericality => true
end
