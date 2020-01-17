json.extract! reservation, :id, :date_in, :date_out, :made_by, :customer_id, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)
