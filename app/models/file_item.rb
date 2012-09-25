class FileItem < ActiveRecord::Base
  belongs_to :user
  belongs_to :thing
  attr_accessible :name
end
