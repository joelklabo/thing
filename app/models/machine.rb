class Machine < ActiveRecord::Base
  belongs_to :user
  attr_accessible :address, :name, :type
end
