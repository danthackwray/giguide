require 'faker'
require "open-uri"

puts "Clearing the database..."

EventArtist.destroy_all
Review.destroy_all
Event.destroy_all
Artist.destroy_all
Venue.destroy_all
User.destroy_all

puts "Creating amazing seeds..."

puts "Creating users..."

user1_file = URI.open("https://singersroom.com/wp-content/uploads/2023/02/Best-Female-Rock-Songs-scaled.jpg")
user1 = User.create!(
  email: "a@gmail.com",
  password: "123456",
  username: "MusicCreator",
  role: "Artist"
)
user1.photo.attach(io: user1_file, filename: "nes.png", content_type: "image/png")
user1.save

user2 = User.create!(
  email: "dan@gmail.com",
  password: "654321",
  username: "MusicalGenius",
  role: "Artist"
)

puts "#{User.count} Users created"

puts "Creating artists..."

artist1_file = URI.open("https://images.unsplash.com/photo-1593031259890-cd71dcc8241f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=687&q=80")
artist1 = Artist.create!(
  user: user1,
  name: "Soulful Sista",
  description: "Soulful Sista is a captivating blues singer with a voice that carries the weight of a thousand stories.
  With every heartfelt note, she channels the pain, resilience, and joy that define the blues genre. Drawing inspiration
  from legendary blues vocalists, Soulful Sista weaves her own unique style into each performance, delivering
  soul-stirring renditions of blues classics and original compositions. Her powerful stage presence and emotive delivery
  create an intimate connection with her audience, leaving them mesmerized and yearning for more",
  website: "www.soulfulsista.com",
  genre: "Blues"
)
artist1.photo.attach(io: artist1_file, filename: "soulsister.png", content_type: "image/png")
artist1.save

artist2_file = URI.open("https://scontent-cpt1-1.xx.fbcdn.net/v/t1.6435-9/128745919_10224156654604968_238489664101038118_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeED9vFUVpwvYU39UzXZlKNLhEVx4DMjiDeERXHgMyOIN9rs3agUgDmOsZlbDs3TvnSadkn3-XbGu_4wLATuUVk2&_nc_ohc=U1WzGc3f4koAX-H6b8c&_nc_ht=scontent-cpt1-1.xx&oh=00_AfCBuNe2dCNAxD7dw_954sejjXNbQepQtMp_Xl39FPosjw&oe=64CD2338")
artist2 = Artist.create!(
  user: user2,
  name: "Dan_T",
  description: "Cape Town born and bred electronic artist and sound engineer Dan T brings a wealth of musical talent to local audiences",
  website: "www.danthackwray.com",
  genre: "Indie Folk Guitar"
)
artist2.photo.attach(io: artist2_file, filename: "dan_t.png", content_type: "image/png")
artist2.save

artist3_file = URI.open("https://imgix.ranker.com/list_img_v2/3719/2803719/original/best-christian-worship-bands-2019?w=817&h=427&fm=jpg&q=50&fit=crop")
artist3 = Artist.create!(
  user: user1,
  name: "Revelation Sounds",
  description: "Revelation Sounds is a passionate group of musicians dedicated to using their God-given talents to
  bring the message of hope, redemption, and faith to the world. Their music is a fusion of contemporary Christian rock
  and gospel, characterized by powerful vocals, electrifying guitar solos, and uplifting lyrics. Through their energetic
  performances and heartfelt songs, Revelation Sounds aims to inspire and lead listeners on a spiritual journey. ",
  website: "www.revelationsoundsband.com",
  genre: "Christian / Gospel"
)
artist3.photo.attach(io: artist3_file, filename: "rev_sounds.png", content_type: "image/png")
artist3.save

artist4_file = URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8j-9KmoNnhRsZJ46iYEMMKj-JpSZEBU_I3A&usqp=CAU")
artist4 = Artist.create!(
  user: user1,
  name: "Graceful Praise",
  description: "Graceful Praise is a dynamic gospel band committed to uplifting spirits and bringing glory to God through their music. Their unique blend of traditional and contemporary gospel music creates a powerful and soul-stirring experience for listeners. With a focus on worship and praise, Graceful Praise aims to create an atmosphere of reverence and joy, inviting audiences to join them in celebrating the goodness and grace of God.",
  website: "www.gracefulpraisemusic.com",
  genre: "Christian / Gospel"
)
artist4.photo.attach(io: artist4_file, filename: "graceful_praise.png", content_type: "image/png")
artist4.save

artist5_file = URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRL0MuyYEBdXOQB_sGDcpyHWLMlz4x9SaQtdRZYsqJeqSD0bPFEVjsQb2DeJl3UkoROU2c&usqp=CAU")
artist5 = Artist.create!(
  user: user1,
  name: "Neon Jellyfish",
  description: "Neon Jellyfish is a vibrant and eccentric rock/pop artist who brings a splash of color and energy to the music scene. With their infectious melodies, catchy hooks, and playful lyrics, Neon Jellyfish creates a sonic universe that is both whimsical and captivating. Their music blends elements of rock, pop, and electronic sounds, creating a unique and dynamic sound. Neon Jellyfish's electrifying performances and imaginative style will transport you to a world where neon lights shimmer and jellyfish dance.",
  website: "www.gracefulpraisemusic.com",
  genre: "Rock / Pop"
)
artist5.photo.attach(io: artist5_file, filename: "neon_jellyfish.png", content_type: "image/png")
artist5.save

artist6_file = URI.open("https://images.unsplash.com/photo-1598387181032-a3103a2db5b3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1176&q=80")
artist6 = Artist.create!(
  user: user1,
  name: "Popcorn Thunder",
  description: "Popcorn Thunder is an explosive and energetic rock/pop artist who delivers a sonic experience like no other. With their electrifying guitar solos, infectious rhythms, and lyrics that make you sing along, Popcorn Thunder creates an atmosphere of pure excitement and joy. Their music blends elements of rock, pop, and punk, creating a high-energy and rebellious sound. Popcorn Thunder's electrifying stage presence and infectious enthusiasm will leave you buzzing with adrenaline and craving more.",
  website: "www.popcornthunderofficial.com",
  genre: "Rock / Pop"
)
artist6.photo.attach(io: artist6_file, filename: "popcorn_thunder.png", content_type: "image/png")
artist6.save

artist7_file = URI.open("https://nijimagazine.com/wp-content/uploads/2021/08/OLIVIA-NELSON-PRESS-SHOT-JEFF-HAHN.jpg")
artist7 = Artist.create!(
  user: user1,
  name: "Senna",
  description: "Senna is a rising star in the world of R&B and Urban Soul, known for her mesmerizing vocals and captivating stage presence. With years of industry experience under her belt, Senna has honed her craft and developed a unique sound that blends sultry melodies, heartfelt lyrics, and infectious grooves. Her journey in the music industry has taken her from intimate clubs to sharing stages with renowned artists, solidifying her reputation as a powerhouse vocalist and a captivating performer. Senna's music explores themes of love, empowerment, and self-discovery, resonating with audiences on a deep emotional level. With her soulful voice and undeniable talent, Senna is poised to make a significant impact on the R&B and Urban Soul scene.",
  website: "www.sennamusic.com",
  genre: "R&B / Urban Soul"
)
artist7.photo.attach(io: artist7_file, filename: "senna.png", content_type: "image/png")
artist7.save

artist8_file = URI.open("https://media-api.xogrp.com/images/1e40d307-af95-4e12-8164-8c4133ec3ec5~cr_0.0.826.816-rs_360.h.fit")
artist8 = Artist.create!(
  user: user1,
  name: "Trojan ",
  description: "Trojan is an up-and-coming sensation in the realm of R&B and Urban Soul, poised to make his mark on the industry with his undeniable talent and magnetic presence. Hailing from a humble background, Trojan discovered his passion for music at a young age and has since dedicated himself to honing his craft. With a velvety smooth voice that effortlessly glides over soulful melodies, Trojan brings a refreshing and contemporary flair to the genre. His lyrics delve into themes of love, resilience, and personal growth, reflecting his own journey and experiences. As an up and coming artist, Trojan is making waves with his authentic sound, captivating audiences with his raw talent and infectious energy. With a promising future ahead, Trojan is set to leave an indelible mark on the R&B and Urban Soul landscape.",
  website: "www.sennamusic.com",
  genre: "R&B / Urban Soul"
)
artist8.photo.attach(io: artist8_file, filename: ".png", content_type: "image/png")
artist8.save

artist9_file = URI.open("https://www.shutterstock.com/image-photo/portrait-young-showman-standup-comic-260nw-659878291.jpg")
artist9 = Artist.create!(
  user: user1,
  name: "Dick Dickens",
  description: "Dick DIckens is a rising star in the comedy scene, captivating audiences with her infectious energy and ,relatable humor. His comedic repertoire includes witty observations about relationships, hilarious personal anecdotes, and spot-on impressions. Dick's magnetic stage presence and ability to connect with his audience create an atmosphere of laughter and joy. Whether his 's sharing stories from his own life or playfully poking fun at societal quirks, Dick's comedic prowess and genuine charm leave a lasting impression on everyone who experiences his act.",
  website: "www.sennamusic.com",
  genre: "Standup Comedy"
)
artist9.photo.attach(io: artist9_file, filename: "dan_t.png", content_type: "image/png")
artist9.save

puts "#{Artist.count} Artists created"

puts "Creating venues..."

venue_house_of_machines = Venue.create!(
  user: user1,
  name: "The House of Machines",
  phone_number: "021 426 1400",
  email: "info@houseofmachines.com",
  website: "https://thehouseofmachines.com",
  address: "84 Shortmarket Street, Cape Town",
  capacity: 400,
  description: "The House of Machines (THoM) was created from a handshake to become a 'good times, great memories'
  meeting house for a likeminded community, a warm embrace against the white noise of everyday life. We've never
  wanted to be the coolest, the newest 'go to' spot, we just wanted to create a place where you'd want to hang out
  with friends, make new ones and simply feel like you belong to something a little more steadfast in this crazy world.
  Our little homes are all things Coffee, Café, Beer, Cocktails, Music, with a touch of 'Moto Hero' thrown in for good measure.
  THoM exists to bring together man, woman, and machine, all built around genuine community, authentic history, and
  with a desire to create memories you'll want to remember. It's our house but your home."
)
venue_house_of_machines_file = URI.open("https://lh3.googleusercontent.com/p/AF1QipNpQcZjrrltw9DVs2WrumLVzfT7e1uQZ0XlAdb4=s0")
venue_house_of_machines.photo.attach(io: venue_house_of_machines_file, filename: "venue_img.png", content_type: "image/png")

venue_piano_bar = Venue.create!(
  user: user1,
  name: "The Piano Bar",
  phone_number: "021 007 5212",
  email: "bookings@thepianobar.co.za",
  website: "http://thepianobar.co.za/",
  address: "47 Napier Street, De Waterkant, Cape Town",
  capacity: 150,
  description: "Step into our New York-inspired restaurant, where you'll find a vibrant atmosphere inviting you to indulge.
  The carefully curated décor combines modern and vintage elements, creating an atmosphere both chic and welcoming. With daily
  live music it is the perfect spot for an unforgettable night out. Come to join us for an evening of great food, handcrafted cocktails, and live music."
)
venue_piano_bar_file = URI.open("https://www.capetownetc.com/wp-content/uploads/2023/03/334740992_741654507524610_7813281306187061057_n-1024x576.jpg")
venue_piano_bar.photo.attach(io: venue_piano_bar_file, filename: "venue_img.png", content_type: "image/png")

venue_armchair_theatre = Venue.create!(
  user: user1,
  name: "The Armchair Theatre",
  phone_number: "073 902 4976",
  email: "info@thearmchair.co.za",
  website: "https://ourarmchair.co.za/",
  address: "135 Lower Main Road, Observatory, Cape Town",
  capacity: 500,
  description: "The Independent Armchair Theatre is a live music venue in Cape Town, South Africa. The Armchair opened
  in 1998 and hosted many different forms of live entertainment, including live music, comedians, film festivals, plays and exhibitions."
)
venue_armchair_theatre_file = URI.open("https://lh3.googleusercontent.com/p/AF1QipNfnsOmBfdZg6V6iuyXVKbf9X3dipyfKgbZpAzX=w768-h768-n-o-v1")
venue_armchair_theatre.photo.attach(io: venue_armchair_theatre_file, filename: "venue_img.png", content_type: "image/png")

venue_modular = Venue.create!(
  user: user1,
  name: "Mødular.",
  phone_number: "071 163 5991",
  email: "hello@modular.co.za",
  website: "https://www.instagram.com/modular_cape_town/?hl=en",
  address: "34 Riebeek Street, Cape Town",
  capacity: 250,
  description: "Mødular. has created a space for something different, where clubbers are able to go dance and experience
  evoking and forward thinking electronic music in a late night club setting. 'Techno is everything you haven't imagined yet' - Jeff Mills."
)

venue_modular_file = URI.open("https://cdn.sanity.io/images/rizm0do5/production/6870aa6fe3513b1ab34fdc9ac52cdc8406314c34-600x900.webp?rect=0,230,600,404&w=690&h=465&q=80&fit=clip&auto=format")
venue_modular.photo.attach(io: venue_modular_file, filename: "venue_img.png", content_type: "image/png")

venue_piano_bar = Venue.create!(
  user: user1,
  name: "The Piano Bar",
  phone_number: "021 007 5212",
  email: "bookings@thepianobar.co.za",
  website: "http://thepianobar.co.za/",
  address: "47 Napier Street, De Waterkant, Cape Town",
  capacity: 150,
  description: "Step into our New York-inspired restaurant, where you'll find a vibrant atmosphere inviting you to indulge.
  The carefully curated décor combines modern and vintage elements, creating an atmosphere both chic and welcoming. With daily
  live music it is the perfect spot for an unforgettable night out. Come to join us for an evening of great food, handcrafted cocktails, and live music."
)
venue_piano_bar_file = URI.open("https://www.capetownetc.com/wp-content/uploads/2023/03/334740992_741654507524610_7813281306187061057_n-1024x576.jpg")
venue_piano_bar.photo.attach(io: venue_piano_bar_file, filename: "venue_img.png", content_type: "image/png")

alexander_bar_upstairs_theatre = Venue.create!(
  user: user1,
  name: "Alexander Bar Upstairs Theatre",
  phone_number: "021 300 1088",
  email: "info@alexanderbar.co.za",
  website: "www.alexanderbar.co.za/",
  address: "76 Strand Street, City Centre, Cape Town",
  capacity: 60,
  description: "An intimate thespian space. Alexander Upstairs, located above (as the name suggests) Alexander Bar on
  the corner of Loop and Strand street in the city centre, hit the local scene in October 2012 with an eclectic blend
  of acts and shows. Nicholas, who has won awards for his play, approached Jon Keevy, another big name in the
  Mother City’s theatre scene, with the idea to turn the unused space above the bar into an intimate performance arena.
  I think we share a commitment to quality productions and to doing our best to connect to the creative community in
  Cape Town,” said Jon, when asked about the partnership. “I’m really excited, and nervous as the gingerbread man at
  a weight-watchers meeting,” he added. Alexander Upstairs will incorporate a plethora of theatrical styles,
  a versatile approach to programming aimed at giving fans a varied experience. Stand-up comedy, literature launches and book readings will make up the space’s staple acts, along with theatre performances. Not to mention, twice a week this 40-seater artistic vessel will host musically themed evenings: Tuesdays are jazz evenings and Wednesdays focus on new folk-style jams (an affair sure to give the hippies a reason to put on their best petchouli."
)
alexander_bar_upstairs_theatre_file = URI.open("https://www.capetownmagazine.com//media_lib/r2/32606fb8953779da7fc32382c6fae14a.img.jpg")
alexander_bar_upstairs_theatre.photo.attach(io: alexander_bar_upstairs_theatre_file, filename: "venue_img.png", content_type: "image/png")

puts "#{Venue.count} Venues created"

puts "Creating events..."

event_kids_festival = Event.create!(
  user: user1,
  venue: venue_piano_bar,
  title: "Kids Kaleidoscope Festival",
  description: "The Kids Kaleidoscope Festival is a joyous celebration of children's talents, creativity, and boundless
  energy. Designed as a day of fun and inspiration, the festival offers a platform for children to showcase their unique
  abilities in various fields such as arts, culture, sports, and more. The festival aims to foster a sense of confidence,
  collaboration, and cultural appreciation among children while providing a safe and inclusive environment for them to
  explore their interests. From lively stage performances and interactive workshops to mouthwatering food stalls and
  exciting games, the Kids Kaleidoscope Festival promises an unforgettable experience filled with laughter, learning,
  and endless fun for children of all ages.",
  start_date: DateTime.parse("2023-12-02 09:00:00"),
  end_date: DateTime.parse("2023-12-04 18:00:00"),
  ticket_price: 100
)
event_kids_festival_file = URI.open("https://images.entertainment.ie/uploads/2022/06/23124022/kaleido.jpg?w=1280&h=768&q=high")
event_kids_festival.photo.attach(io: event_kids_festival_file, filename: "event_img.png", content_type: "image/png")

event_dan_t = Event.create!(
  user: user1,
  venue: venue_house_of_machines,
  title: "Dan T Live in Show",
  description: "For one night only, witness the once in a generation musical talent of Cape Town's own Dan Thackwray.
  Playing a selection of songs from his vast catalog, Dan's unique voice and broad instrumental mastery will be on
  show live for one night only, so don't miss out!",
  start_date: DateTime.parse("2023-07-08 21:00:00"),
  end_date: DateTime.parse("2023-07-08 23:00:00"),
  ticket_price: 200
)
event_dan_t_file = URI.open("https://scontent-cpt1-1.xx.fbcdn.net/v/t1.6435-9/128745919_10224156654604968_238489664101038118_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeED9vFUVpwvYU39UzXZlKNLhEVx4DMjiDeERXHgMyOIN9rs3agUgDmOsZlbDs3TvnSadkn3-XbGu_4wLATuUVk2&_nc_ohc=U1WzGc3f4koAX-H6b8c&_nc_ht=scontent-cpt1-1.xx&oh=00_AfCBuNe2dCNAxD7dw_954sejjXNbQepQtMp_Xl39FPosjw&oe=64CD2338")
event_dan_t.photo.attach(io: event_dan_t_file, filename: "event_img.png", content_type: "image/png")

event_turn_into_a_cyclist_at_full_moon = Event.create!(
  user: user1,
  venue: venue_house_of_machines,
  title: "Turn into a cyclist at full moon",
  description: " rock up under the Greenpoint Circle on full moon night to join hundreds of other Capetonians as they
  take over the streets of the inner city on two wheels. Critical Mass is an event that happens worldwide, where large
  groups of cyclists take over the city streets under the light of the full moon. In Cape Town the route follows the
  Sea Point Promenade to the fan walk before turning back to the start (some riders carry down Long Street before
  returning) to gather and socialize. It's free to participate. If you don't have a bike visit the
  Critical Mass Facebook page to find a company to hire one from.",
  start_date: DateTime.parse("2023-07-08 21:00:00"),
  end_date: DateTime.parse("2023-07-08 23:00:00"),
  ticket_price: 50
)
event_turn_into_a_cyclist_at_full_moon_file = URI.open("https://www.capetownmagazine.com/media_lib/preview/14dd6c845843efe82a57b7ec761025e4.preview.jpg")
event_turn_into_a_cyclist_at_full_moon.photo.attach(io: event_turn_into_a_cyclist_at_full_moon_file, filename: "event_img.png", content_type: "image/png")

event_forgotten_culture_selectors = Event.create!(
  user: user2,
  venue: venue_modular,
  title: "Forgotten Culture Selectors",
  description: "Forgotten Culture Selectors aims to showcase what the art of DJing and performance is all about.
  A space giving artists complete freedom over genres played, moods felt and track selection. Authentic vibes coupled
  with new renovations at the beloved Trenchtown makes us excited to settle into the heart of Obs for the very first time.
  The pizza oven will be firing and there will be loads of ridiculous drink specials on offer, so you won't be disappointed.
  The music played will be spread across two floors. Terrace and Garden by name, good music by game. Artists will be released one by one in the build up to the event.",
  start_date: DateTime.parse("2023-08-08 21:00:00"),
  end_date: DateTime.parse("2023-08-09 23:00:00"),
  ticket_price: 300
)
event_forgotten_culture_selectors_file = URI.open("https://images.pexels.com/photos/1482476/pexels-photo-1482476.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500")
event_forgotten_culture_selectors.photo.attach(io: event_forgotten_culture_selectors_file, filename: "event_img.png", content_type: "image/png")

event_battle_of_the_instruments = Event.create!(
  user: user1,
  venue: venue_armchair_theatre,
  title: "Battle of the Instruments",
  description: "Join us at Karaoke Kong for an EPIC showdown! Introducing the Battle of the Instruments competition!
  Show off your talent on stage with the instrument of your choice – from guitars to flutes harps and everything in-between!",
  start_date: DateTime.parse("2023-09-08 18:00:00"),
  end_date: DateTime.parse("2023-09-08 23:00:00"),
  ticket_price: 229
)
event_battle_of_the_instruments_file = URI.open("https://cdn2.allevents.in/thumbs/thumb6496c97808a7e.jpg")
event_battle_of_the_instruments.photo.attach(io: event_battle_of_the_instruments_file, filename: "event_img.png", content_type: "image/png")

puts "#{Event.count} Events created"

puts "Seeding completed!"
