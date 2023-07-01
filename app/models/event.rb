class Event < ApplicationRecord
  belongs_to :event_artists
  belongs_to :venue
  validates :title, :description, :start_datetime, :end_datetime, presence: true
end
