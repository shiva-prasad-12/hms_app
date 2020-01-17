class ReservedRoom < ActiveRecord::Base
  belongs_to :room_type
  belongs_to :reservation
end
