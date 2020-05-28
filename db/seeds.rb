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

  name = "ukukele"
  category = "guitar family"
  description = "This is my #{name}. There are many like it, but this one is mine. My #{name} is my best friend. It is my life. I must master it as I must master my life.
  Without me, my #{name} is useless. Without my #{name}, I am useless."

  new_instrument = Instrument.create!(name: name, category: category, description: description, user: user)
  file = URI.open('app/assets/images/ukulele_dummy.jpg')
  new_instrument.photo.attach(io: file, filename: 'ukulele_dummy.jpg', content_type: 'image/jpg')
  puts "Instrument #{name} created"

  name = "flute"
  category = "wood wind"
  description = "This is my #{name}. There are many like it, but this one is mine. My #{name} is my best friend. It is my life. I must master it as I must master my life.
  Without me, my #{name} is useless. Without my #{name}, I am useless."

  new_instrument = Instrument.create!(name: name, category: category, description: description, user: user)
  file = URI.open('app/assets/images/flute.jpg')
  new_instrument.photo.attach(io: file, filename: 'flute.jpg', content_type: 'image/jpg')
  puts "Instrument #{name} created"

  email = 'sebastian.hahne@jamable.com'
  pw = 'hahne1234'
  username = 'basti'

  user = User.create!(email: email, password: pw, password_confirmation: pw, username: username)
  puts "User #{username} create!d"


    name = "guitar"
    category = "guitar family"
    description = "This is my #{name}. There are many like it, but this one is mine. My #{name} is my best friend. It is my life. I must master it as I must master my life.
    Without me, my #{name} is useless. Without my #{name}, I am useless."

    new_instrument = Instrument.create!(name: name, category: category, description: description, user: user)
    file = URI.open('app/assets/images/acoustic_guitar.jpg')
    new_instrument.photo.attach(io: file, filename: 'acoustic_guitar.jpg', content_type: 'image/jpg')
    puts "Instrument #{name} created"

    name = "accordion"
    category = "keyboard"
    description = "This is my #{name}. There are many like it, but this one is mine. My #{name} is my best friend. It is my life. I must master it as I must master my life.
    Without me, my #{name} is useless. Without my #{name}, I am useless."

    new_instrument = Instrument.create!(name: name, category: category, description: description, user: user)
    file = URI.open('app/assets/images/accordion.jpg')
    new_instrument.photo.attach(io: file, filename: 'accordion.jpg', content_type: 'image/jpg')
    puts "Instrument #{name} created"


  email = 'moritz.kork@jamable.com'
  pw = 'kork1234'
  username = 'moe'

  user = User.create!(email: email, password: pw, password_confirmation: pw, username: username)
  puts "User #{username} create!d"

    name = "trumpet"
    category = "brass"
    description = "This is my #{name}. There are many like it, but this one is mine. My #{name} is my best friend. It is my life. I must master it as I must master my life.
    Without me, my #{name} is useless. Without my #{name}, I am useless."

    new_instrument = Instrument.create!(name: name, category: category, description: description, user: user)
    file = URI.open('app/assets/images/trumpet.jpg')
    new_instrument.photo.attach(io: file, filename: 'trumpet.jpg', content_type: 'image/jpg')
    puts "Instrument #{name} created"

    name = "xylophone"
    category = "keyboard"
    description = "This is my #{name}. There are many like it, but this one is mine. My #{name} is my best friend. It is my life. I must master it as I must master my life.
    Without me, my #{name} is useless. Without my #{name}, I am useless."

    new_instrument = Instrument.create!(name: name, category: category, description: description, user: user)
    file = URI.open('app/assets/images/xylo_baby.jpg')
    new_instrument.photo.attach(io: file, filename: 'xylo_baby.jpg', content_type: 'image/jpg')
    puts "Instrument #{name} created"


  email = 'benj.riethmuller@jamable.com'
  pw = 'riethmuller1234'
  username = 'benj'

  user = User.create!(email: email, password: pw, password_confirmation: pw, username: username)
  puts "User #{username} created"

    name = "grandma's accordion"
    category = "keyboard"
    description = "This is my #{name}. There are many like it, but this one is mine. My #{name} is my best friend. It is my life. I must master it as I must master my life.
    Without me, my #{name} is useless. Without my #{name}, I am useless."

    new_instrument = Instrument.create!(name: name, category: category, description: description, user: user)
    file = URI.open('app/assets/images/accordion2.jpg')
    new_instrument.photo.attach(io: file, filename: 'accordion2.jpg', content_type: 'image/jpg')
    puts "Instrument #{name} created"

    name = "harmonica"
    category = "brass"
    description = "This is my #{name}. There are many like it, but this one is mine. My #{name} is my best friend. It is my life. I must master it as I must master my life.
    Without me, my #{name} is useless. Without my #{name}, I am useless."

    new_instrument = Instrument.create!(name: name, category: category, description: description, user: user)
    file = URI.open('app/assets/images/harmonica.jpg')
    new_instrument.photo.attach(io: file, filename: 'harmonica.jpg', content_type: 'image/jpg')
    puts "Instrument #{name} created"


email = 'toni.panacek@jamable.com'
pw = 'panacek1234'
username = 'toni'

user = User.create!(email: email, password: pw, password_confirmation: pw, username: username)
puts "User #{username} created"


    name = "drum kit"
    category = "percussions"
    description = "This is my #{name}. There are many like it, but this one is mine. My #{name} is my best friend. It is my life. I must master it as I must master my life.
    Without me, my #{name} is useless. Without my #{name}, I am useless."

    new_instrument = Instrument.create!(name: name, category: category, description: description, user: user)
    file = URI.open('app/assets/images/drumkit_sunset.jpg')
    new_instrument.photo.attach(io: file, filename: 'drumkit_sunset.jpg', content_type: 'image/jpg')
    puts "Instrument #{name} created"

    name = "fender guitar"
    category = "guitar family"
    description = "This is my #{name}. There are many like it, but this one is mine. My #{name} is my best friend. It is my life. I must master it as I must master my life.
    Without me, my #{name} is useless. Without my #{name}, I am useless."

    new_instrument = Instrument.create!(name: name, category: category, description: description, user: user)
    file = URI.open('app/assets/images/fender_guitar.jpg')
    new_instrument.photo.attach(io: file, filename: 'fender_guitar.jpg', content_type: 'image/jpg')
    puts "Instrument #{name} created"

    name = "piano"
    category = "keyboard"
    description = "This is my #{name}. There are many like it, but this one is mine. My #{name} is my best friend. It is my life. I must master it as I must master my life.
    Without me, my #{name} is useless. Without my #{name}, I am useless."

    new_instrument = Instrument.create!(name: name, category: category, description: description, user: user)
    file = URI.open('app/assets/images/piano.jpg')
    new_instrument.photo.attach(io: file, filename: 'piano.jpg', content_type: 'image/jpg')
    puts "Instrument #{name} created"



