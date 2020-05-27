require 'open-uri'

# destroying old database
puts 'Burning down old database...'
puts 'Killing all the users...'
User.destroy_all
puts 'Kurt cobaining all the instruments...'
Instrument.destroy_all

# Creating 5 users
puts 'Cloning users'

  email = 'sebastian.remm@jamable.com'
  pw = 'remm1234'
  username = 'sebi'

  user = User.create!(email: email, password: pw, password_confirmation: pw, username: username)
  puts "User #{username} created"

  2.times do
    name = Faker::Music.instrument
    category = ["guitar", "base", "drums", "key instrument", "string", "PA", "DJ", "light"].sample
    description = Faker::TvShows::Simpsons.quote

    new_instrument = Instrument.create!(name: name, category: category, description: description, user: user)
    file = URI.open('app/assets/images/guitar_dummy.jpg')
    new_instrument.photo.attach(io: file, filename: 'guitar_dummy.jpg', content_type: 'image/jpg')
    puts "Instrument #{name} created"
  end

  email = 'sebastian.hahne@jamable.com'
  pw = 'hahne1234'
  username = 'basti'

  user = User.create!(email: email, password: pw, password_confirmation: pw, username: username)
  puts "User #{username} created"

  2.times do
    name = Faker::Music.instrument
    category = ["guitar", "base", "drums", "key instrument", "string", "wind instrument", "PA", "DJ", "light"].sample
    description = Faker::TvShows::Simpsons.quote

    new_instrument = Instrument.create!(name: name, category: category, description: description, user: user)
    file = URI.open('app/assets/images/guitar_dummy.jpg')
    new_instrument.photo.attach(io: file, filename: 'guitar_dummy.jpg', content_type: 'image/jpg')
    puts "Instrument #{name} created"
  end

email = 'moritz.kork@jamable.com'
  pw = 'kork1234'
  username = 'moe'

  user = User.create!(email: email, password: pw, password_confirmation: pw, username: username)
  puts "User #{username} create!d"

  2.times do
    name = Faker::Music.instrument
    category = ["guitar", "base", "drums", "key instrument", "string", "wind instrument", "PA", "DJ", "light"].sample
    description = Faker::TvShows::Simpsons.quote

    new_instrument = Instrument.create!(name: name, category: category, description: description, user: user)
    file = URI.open('app/assets/images/guitar_dummy.jpg')
    new_instrument.photo.attach(io: file, filename: 'guitar_dummy.jpg', content_type: 'image/jpg')
    puts "Instrument #{name} created"
  end

email = 'benj.riethmuller@jamable.com'
  pw = 'riethmuller1234'
  username = 'benj'

  user = User.create!(email: email, password: pw, password_confirmation: pw, username: username)
  puts "User #{username} created"

  2.times do
    name = Faker::Music.instrument
    category = ["guitar", "base", "drums", "key instrument", "string", "wind instrument", "PA", "DJ", "light"].sample
    description = Faker::TvShows::Simpsons.quote

    new_instrument = Instrument.create!(name: name, category: category, description: description, user: user)
    file = URI.open('app/assets/images/guitar_dummy.jpg')
    new_instrument.photo.attach(io: file, filename: 'guitar_dummy.jpg', content_type: 'image/jpg')
    puts "Instrument #{name} created"
  end

email = 'toni.panacek@jamable.com'
  pw = 'panacek1234'
  username = 'toni'

  user = User.create!(email: email, password: pw, password_confirmation: pw, username: username)
  puts "User #{username} created"

  2.times do
    name = Faker::Music.instrument
    category = ["guitar", "base", "drums", "key instrument", "string", "wind instrument", "PA", "DJ", "light"].sample
    description = Faker::TvShows::Simpsons.quote

    new_instrument = Instrument.create!(name: name, category: category, description: description, user: user)
    file = URI.open('app/assets/images/guitar_dummy.jpg')
    new_instrument.photo.attach(io: file, filename: 'guitar_dummy.jpg', content_type: 'image/jpg')
    puts "Instrument #{name} created"
  end


