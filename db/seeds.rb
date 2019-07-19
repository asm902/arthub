# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Booking.destroy_all

Painting.destroy_all
User.destroy_all

puts "Cleaning the database..."
puts "Database clean. start seeding"

puts "Creating Users"
user1 = User.create!(first_name: "Jerry", last_name: "McGuire", email: "jerry@gmail.com", password: "123456", artist: true);
puts "User 1 - Seeded ✅"
user2 = User.create!(first_name: "Ana", last_name: "Lopez", email: "ana@gmail.com", password: "123456", artist: false);
puts "User 2 - Seeded ✅"
user3 = User.new(first_name: "Alicia", last_name: "Ngomo", email: "alicia@gmail.com", password: "123456", artist: true);
user3.remote_photo_url = "https://res.cloudinary.com/dtybbw7rx/image/upload/v1563352869/IMG_3942_l3kzpu.jpg"
user3.save!
puts "User 3 - Seeded ✅"
user4 = User.create!(first_name: "Jacob", last_name: "Morton", email: "jacob@gmail.com", password: "123456", artist: false);
puts "User 4 - Seeded ✅"
user5 = User.new(first_name: "Adam", last_name: "McCallister", email: "adam@gmail.com", password: "123456", artist: false);
user5.remote_photo_url = "https://res.cloudinary.com/dtybbw7rx/image/upload/v1563496920/otrq8wcmqu7uywk90ue3.jpg"
user5.save!
puts "User 5 - Seeded ✅"
puts "All Users - Seeded ✅"

puts "Creating Paintings/Artwork"
painting1 = Painting.new(name: "Red Yellow Blue",
  description: "An abstract painting full of geometry",
  year: 1965,
  price: 1000,
  artist: "Wassily Kandinsky",
  available: false,
  style: 'Abstract',
  location: 'London',
  user: user1)
# painting1.remote_photo_url = "https://res.cloudinary.com/dtybbw7rx/image/upload/v1563202483/v5chpr5urbu451ucyimz.jpg"
painting1.save!
puts "Painting 1 - Red Yello Blue - Seeded ✅"

painting2 = Painting.new(name: "Roses Bloom",
  description: "A realistic depiction of nature. Strong contrast and focused lighting",
  year: 2018,
  price: 60,
  artist: "Milena Gomez",
  available: true,
  style: 'Nature',
  location: 'Chicago',
  user: user2)
# painting2.remote_photo_url = 'https://res.cloudinary.com/dtybbw7rx/image/upload/v1563208305/roses_bloom_q3k4cb.jpg'
painting2.save!
puts "Painting 2 - Roses Bloom - Seeded ✅"

painting3 = Painting.new(name: "El abrazo",
  description: "Two people sharing a strong hug",
  year: 2009,
  price: 50,
  artist: "Alicia Ngomo",
  available: false,
  style: 'Nude',
  location: 'Madrid',
  user: user3)
# painting3.remote_photo_url = "https://res.cloudinary.com/dtybbw7rx/image/upload/v1563211595/El_abrazo_j6r3jn.jpg"
painting3.save!
puts "Painting 3 - El abrazo - Seeded ✅"

painting4 = Painting.new(name: "Yellow",
  description: "An abstract painting left to the imagination of the viewer",
  year: 2017,
  price: 75,
  artist: "Jerry McGuire",
  available: false,
  style: 'Abstract',
  location: 'London',
  user: user1)
# painting4.remote_photo_url = "https://res.cloudinary.com/dtybbw7rx/image/upload/v1563208306/yellow_zzbcsi.jpg"
painting4.save!
puts "Painting 4 - Yellow - Seeded ✅"

painting5 = Painting.new(name: "Rainbox",
  description: "An abstract painting full of geometry",
  year: 2019,
  price: 45,
  artist: "Jack Reacher",
  available: false,
  style: 'Abstract',
  location: 'New York',
  user: user2)
# painting5.remote_photo_url = "https://res.cloudinary.com/dtybbw7rx/image/upload/v1563208305/rainbow_u2b83u.jpg"
painting5.save!
puts "Painting 5 - Rainbow - Seeded ✅"

painting6 = Painting.new(name: "Chillapple",
  description: "An abstract painting full of geometry",
  year: 2015,
  price: 99,
  artist: "Pineapple Supply Company",
  available: false,
  style: 'Impressionism',
  location: 'Miami',
  user: user5)
# painting6.remote_photo_url = "https://res.cloudinary.com/dtybbw7rx/image/upload/v1563475421/pineapple-supply-co-zpkYWVAni30-unsplash_uemszq.jpg"
painting6.save!
puts "Painting 6 - Chillapple - Seeded ✅"

painting7 = Painting.new(name: "Freshapple",
  description: "An abstract painting full of geometry",
  year: 2018,
  price: 69,
  artist: "Pineapple Supply Company",
  available: false,
  style: 'Impressionism',
  location: 'Chicago',
  user: user5)
# painting7.remote_photo_url = "https://res.cloudinary.com/dtybbw7rx/image/upload/v1563475432/pineapple-supply-co-lq-8vB5m0DM-unsplash_eshikv.jpg"
painting7.save!
puts "Painting 7 - Freshapple - Seeded ✅"
puts "Paintings/Artwork - Seeded ✅"

puts "Creating Bookings"
booking1 = Booking.new(
  user: user3,
  painting: painting7,
  confirmed: nil)
booking1.save!
puts "Booking 1 - Seeded ✅"

booking2 = Booking.new(
  user: user5,
  painting: painting3,
  confirmed: true)
booking2.save!
puts "Booking 2 - Seeded ✅"

booking3 = Booking.new(
  user: user3,
  painting: painting2,
  confirmed: false)
booking3.save!
puts "Booking 3 - Seeded ✅"

booking4 = Booking.new(
  user: user5,
  painting: painting5,
  confirmed: nil)
booking4.save!
puts "Booking 4 - Seeded ✅"

booking5 = Booking.new(
  user: user3,
  painting: painting2,
  confirmed: true)
booking5.save!
puts "Booking 5 - Seeded ✅"

booking6 = Booking.new(
  user: user5,
  painting: painting4,
  confirmed: false)
booking6.save!
puts "Booking 6 - Seeded ✅"

booking7 = Booking.new(
  user: user2,
  painting: painting3,
  confirmed: false)
booking7.save!
puts "Booking 7 - Seeded ✅"

booking8 = Booking.new(
  user: user4,
  painting: painting6,
  confirmed: false)
booking8.save!
puts "Booking 8 - Seeded ✅"

booking9 = Booking.new(
  user: user1,
  painting: painting7,
  confirmed: true)
booking9.save!
puts "Booking 9 - Seeded ✅"

booking10 = Booking.new(
  user: user4,
  painting: painting3,
  confirmed: nil)
booking10.save!
puts "Booking 10 - Seeded ✅"

booking11 = Booking.new(
  user: user1,
  painting: painting3,
  confirmed: nil)
booking11.save!
puts "Booking11 - Seeded ✅"

puts "🥳 🎊 🎉 👯‍♂️ 👯‍♀️ Congratulations, database succesfully seeded! 👯‍♀️ 👯‍♂️ 🎉 🎊 🥳"


