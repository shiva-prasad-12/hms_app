class Room < ActiveRecord::Base
  belongs_to :room_type
  has_many :reservations, through: :occupied_rooms
end
