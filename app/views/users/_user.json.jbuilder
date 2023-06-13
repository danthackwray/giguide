json.extract! user, :id, :email, :password, :username, :role, :bio, :profile_pic, :created_at, :updated_at
json.url user_url(user, format: :json)
