json.extract! room, :id, :number, :name, :status, :roomtype_id, :created_at, :updated_at
json.url room_url(room, format: :json)
