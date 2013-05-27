class UserStory < ActiveRecord::Base
  attr_accessible :actual_cost, :developer_id, :due_date, :estimated_cost, :project_id, :story, :title
  validates :title, :story, :due_date, :presence => true
  validates :estimated_cost, :developer_id, :project_id, :numericality => true
  has_many :story_files
  belongs_to :project
  belongs_to :developer
  has_and_belongs_to_many :tags
end
