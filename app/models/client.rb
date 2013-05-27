class Client < ActiveRecord::Base
  attr_accessible :address, :email, :name, :phone, :primary_contact
  validates :name, :email, :primary_contact, :presence => true
  validates :email, :format => { :with => /@/ }
  has_many :projects
end
