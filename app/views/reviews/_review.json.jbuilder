json.extract! review, :id, :user_id, :event_id, :rating, :comment, :created_at, :updated_at
json.url review_url(review, format: :json)
