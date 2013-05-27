class Project < ActiveRecord::Base
  attr_accessible :client_id, :due_date, :estimated_cost, :title, :total_cost
  validates :client_id, :title, :presence => true
  validates :client_id, :numericality => true
  belongs_to :client
  has_many :user_stories
end
