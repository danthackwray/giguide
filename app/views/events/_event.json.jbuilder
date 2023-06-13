json.extract! event, :id, :user_id, :venue_id, :title, :description, :start_datetime, :start_time, :end_datetime, :end_time, :cover_image, :ticket_price, :capacity, :created_at, :updated_at
json.url event_url(event, format: :json)
