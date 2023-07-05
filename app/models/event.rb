class Event < ApplicationRecord
  has_many :event_artists
  belongs_to :venue
  validates :title, :description, :start_datetime, :end_datetime, presence: true
end
