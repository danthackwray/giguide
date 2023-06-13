json.extract! event_artist, :id, :event_id, :artist_id, :created_at, :updated_at
json.url event_artist_url(event_artist, format: :json)
