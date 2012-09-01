class Meeting < ActiveRecord::Base
  belongs_to :room
  has_and_belongs_to_many :participants
  
  attr_accessible :end, :start, :room, :room_id, :participants_ids
end
