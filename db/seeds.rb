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
  puts "User #{username} create!d"

  10.times do
    name = Faker::Music.instrument
    category = ["guitar", "base", "drums", "key instrument", "string", "PA", "DJ", "light"].sample
    description = Faker::TvShows::Simpsons.quote
    photo = "g0u0mczfrpnw6ud3nszk"

    Instrument.create!(name: name, category: category, description: description, user: user)
    puts "Instrument #{name} create!d"
  end

email = 'sebastian.hahne@jamable.com'
  pw = 'hahne1234'
  username = 'basti'

  user = User.create!(email: email, password: pw, password_confirmation: pw, username: username)
  puts "User #{username} create!d"

  10.times do
    name = Faker::Music.instrument
    category = ["guitar", "base", "drums", "key instrument", "string", "wind instrument", "PA", "DJ", "light"].sample
    description = Faker::TvShows::Simpsons.quote

    Instrument.create!(name: name, category: category, description: description, user: user)
    puts "Instrument #{name} create!d"
  end

email = 'moritz.kork@jamable.com'
  pw = 'kork1234'
  username = 'moe'

  user = User.create!(email: email, password: pw, password_confirmation: pw, username: username)
  puts "User #{username} create!d"

  10.times do
    name = Faker::Music.instrument
    category = ["guitar", "base", "drums", "key instrument", "string", "wind instrument", "PA", "DJ", "light"].sample
    description = Faker::TvShows::Simpsons.quote

    Instrument.create!(name: name, category: category, description: description, user: user)
    puts "Instrument #{name} create!d"
  end

email = 'benj.riethmuller@jamable.com'
  pw = 'riethmuller1234'
  username = 'benj'

  user = User.create!(email: email, password: pw, password_confirmation: pw, username: username)
  puts "User #{username} create!d"

  10.times do
    name = Faker::Music.instrument
    category = ["guitar", "base", "drums", "key instrument", "string", "wind instrument", "PA", "DJ", "light"].sample
    description = Faker::TvShows::Simpsons.quot

    Instrument.create!(name: name, category: category, description: description, user: user)
    puts "Instrument #{name} create!d"
  end

email = 'toni.panacek@jamable.com'
  pw = 'panacek1234'
  username = 'toni'

  user = User.create!(email: email, password: pw, password_confirmation: pw, username: username)
  puts "User #{username} create!d"

  10.times do
    name = Faker::Music.instrument
    category = ["guitar", "base", "drums", "key instrument", "string", "wind instrument", "PA", "DJ", "light"].sample
    description = Faker::TvShows::Simpsons.quote

    Instrument.create!(name: name, category: category, description: description, user: user)
    puts "Instrument #{name} create!d"
  end


