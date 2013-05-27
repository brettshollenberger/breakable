class Tag < ActiveRecord::Base
  attr_accessible :tag
  validates :tag, :presence => true
end
