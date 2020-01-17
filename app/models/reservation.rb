class Reservation < ActiveRecord::Base
  belongs_to :customer
  has_many :rooms, through: :occupied_rooms
  has_many :reserved_rooms
end
