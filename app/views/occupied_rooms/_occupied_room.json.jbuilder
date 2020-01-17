json.extract! occupied_room, :id, :check_in, :check_out, :room_id, :reservation_id, :created_at, :updated_at
json.url occupied_room_url(occupied_room, format: :json)
