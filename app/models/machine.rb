class Machine < ActiveRecord::Base
  belongs_to :user
  attr_accessible :address, :name, :kind, :user
  validates :name, :presence => true 
  validates :kind, :presence => true 
  validates :user, :presence => true 
  validates :address, :presence => true 
end
