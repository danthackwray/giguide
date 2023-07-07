class Artist < ApplicationRecord
  belongs_to :user
  CATEGORIES = ["Rock", "Indie", "Metal", "Folk", "Jazz", "Blues"]
  has_one_attached :photo
  has_many :event_artists
  has_many :events, through: :event_artists
  include PgSearch::Model
  pg_search_scope :search_by_name_and_description,
                  against: %i[name description],
                  # associated_against: { venue: :name, artist: :genre},
                  using: { tsearch: { prefix: true } }
end
