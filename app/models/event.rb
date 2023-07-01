require "pg_search"
class Event < ApplicationRecord
  belongs_to :event_artists
  belongs_to :venue
  validates :title, :description, :start_datetime, :end_datetime, presence: true
  include PgSearch::Model
  pg_search_scope :search_by_title_and_description,
                  against: %i[title description],
                  associated_against: { venue: :name, artist: :genre},
                  using: { tsearch: { prefix: true } }
end
