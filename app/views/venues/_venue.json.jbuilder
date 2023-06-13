json.extract! venue, :id, :user_id, :name, :latitude_longitude, :phone_number, :email, :website, :created_at, :updated_at
json.url venue_url(venue, format: :json)
