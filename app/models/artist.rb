class Artist < ApplicationRecord
  belongs_to :user
  CATEGORIES = ["Rock", "Indie", "Metal", "Folk", "Jazz", "Blues"]
  has_one_attached :photo
  has_many :event_artists
  has_many :events, through: :event_artists
end
