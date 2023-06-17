require 'faker'

EventArtist.destroy_all
Review.destroy_all
Event.destroy_all
Artist.destroy_all
Venue.destroy_all
User.destroy_all

puts "Creating amazing seeds..."

5.times do
  user = User.create!(
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 8),
  )
  artist = Artist.create!(
    user_id: user.id,
    name: Faker::Music.band,
    genre: Faker::Music.genre,
    description: Faker::Lorem.paragraph,
    website: Faker::Internet.url
  )
  venue = Venue.create!(
    user_id: user.id,
    name: Faker::GreekPhilosophers.name,
    latitude_longitude: [Faker::Address.latitude, Faker::Address.longitude].join(','),
    phone_number: Faker::PhoneNumber.phone_number,
    email: Faker::Internet.email,
    website: Faker::Internet.url
  )
  event = Event.create!(
    user_id: user.id,
    venue_id: venue.id,
    title: Faker::Lorem.sentence(word_count: 3),
    description: Faker::Lorem.paragraph,
    start_datetime: Faker::Time.forward(days: 23, period: :evening),
    end_datetime: Faker::Time.forward(days: 24, period: :evening),
    ticket_price: Faker::Commerce.price(range: 20..100.0),
    capacity: Faker::Number.between(from: 50, to: 500)
  )
  review = Review.create!(
    user_id: user.id,
    event_id: event.id,
    rating: Faker::Number.between(from: 1, to: 5),
    comment: Faker::Lorem.paragraph
  )
  EventArtist.create!(
    event_id: event.id,
    artist_id: artist.id
  )
end

puts "Seeds created"
# 20.times do
#   event = Event.create!(
#     user_id: user.id,
#     venue_id: venue.id,
#     title: Faker::Lorem.sentence(word_count: 3),
#     description: Faker::Lorem.paragraph,
#     start_datetime: Faker::Time.forward(days: 23, period: :evening),
#     end_datetime: Faker::Time.forward(days: 24, period: :evening),
#     ticket_price: Faker::Commerce.price(range: 20..100.0),
#     capacity: Faker::Number.between(from: 50, to: 500)
#   )

#   puts "Created event: #{event.name}"

# end
