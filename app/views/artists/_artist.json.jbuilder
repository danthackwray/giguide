json.extract! artist, :id, :user_id, :name, :genre, :description, :website, :created_at, :updated_at
json.url artist_url(artist, format: :json)
