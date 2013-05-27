class Developer < ActiveRecord::Base
  attr_accessible :hourly_rate, :name
  validates :hourly_rate, :name, :presence => true
  has_many :user_stories
end
