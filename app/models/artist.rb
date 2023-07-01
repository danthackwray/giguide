class Artist < ApplicationRecord
  belongs_to :user
  CATEGORIES = ["Rock", "Indie", "Metal", "Folk", "Jazz", "Blues"]
  has_one_attached :photo
  has_many :events

end
