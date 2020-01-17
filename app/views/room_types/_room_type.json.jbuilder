json.extract! room_type, :id, :description, :max_capacity, :price, :created_at, :updated_at
json.url room_type_url(room_type, format: :json)
