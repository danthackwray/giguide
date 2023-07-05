require "pg_search"
class Event < ApplicationRecord
  belongs_to :user
  belongs_to :venue
  has_many :event_artists
  has_many :artists, through: :event_artists
  accepts_nested_attributes_for :event_artists
  validates :title, :description, :start_datetime, :end_datetime, presence: true
  include PgSearch::Model
  pg_search_scope :search_by_title_and_description,
                  against: %i[title description],
                  # associated_against: { venue: :name, artist: :genre},
                  using: { tsearch: { prefix: true } }
end
