class StoryFiles < ActiveRecord::Base
  attr_accessible :filename, :user_story_id
  validates :filename, :presence => true
  validates :user_story_id, :numericality => true
end
