class Room < ActiveRecord::Base
  attr_accessible :name

  scope :list, order("name")
end
