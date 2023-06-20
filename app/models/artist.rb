class Artist < ApplicationRecord
  belongs_to :user
  CATEGORIES = ["Rock", "Indie", "Metal", "Folk", "Jazz", "Blues"]
end
