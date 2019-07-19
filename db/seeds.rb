# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Booking.destroy_all
Photo.destroy_all
Painting.destroy_all
User.destroy_all

puts "Cleaning the database..."
puts "Database clean. start seeding"

puts "Creating Users"
user1 = User.create!(first_name: "Jerry", last_name: "McGuire", email: "jerry@gmail.com", password: "123456", artist: true);
user1.remote_photo_url = "https://i.imgur.com/UVklnoK.jpg"
user1.save!
puts "User 1 - Seeded ✅"
user2 = User.create!(first_name: "Ana", last_name: "Lopez", email: "ana@gmail.com", password: "123456", artist: false);
user2.remote_photo_url = "https://i.imgur.com/nwvVECy.jpg"
user2.save!
puts "User 2 - Seeded ✅"
user3 = User.new(first_name: "Alicia", last_name: "Ngomo", email: "alicia@gmail.com", password: "123456", artist: true);
user3.remote_photo_url = "https://i.imgur.com/NgTBg7y.jpg"
user3.save!
puts "User 3 - Seeded ✅"
user4 = User.create!(first_name: "Jacob", last_name: "Morton", email: "jacob@gmail.com", password: "123456", artist: false);
user4.remote_photo_url = "https://i.imgur.com/hTnKsgG.png"
user4.save!
puts "User 4 - Seeded ✅"
user5 = User.new(first_name: "Adam", last_name: "McCallister", email: "adam@gmail.com", password: "123456", artist: false);
user5.remote_photo_url = "https://i.imgur.com/5FXWDB5.jpg"
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
painting1.save!

photo1 = Photo.new(painting: painting1)
photo1.remote_data_url = "https://i.imgur.com/XD1AdVj.jpg"
photo1.save


puts "Painting 1 - Red Yellow Blue - Seeded ✅"

painting2 = Painting.new(name: "Roses Bloom",
  description: "A realistic depiction of nature. Strong contrast and focused lighting",
  year: 2018,
  price: 15,
  artist: "Milena Gomez",
  height: 100,
  width: 50,
  available: true,
  style: 'Nature',
  location: 'Chicago',
  user: user2)
painting2.save!

photo2 = Photo.new(painting: painting2)
photo2.remote_data_url = 'https://i.imgur.com/6m2vy3d.jpg'
photo2.save


puts "Painting 2 - Roses Bloom - Seeded ✅"

painting3 = Painting.new(name: "El abrazo",
  description: "Two people sharing a strong hug",
  year: 2009,
  price: 20,
  artist: "Alicia Ngomo",
  height: 100,
  width: 60,
  available: false,
  style: 'Nude',
  location: 'Madrid',
  user: user3)
painting3.save!

photo3 = Photo.new(painting: painting3)
photo3.remote_data_url = "https://i.imgur.com/gKoXS4Q.jpg"
photo3.save

photo4 = Photo.new(painting: painting3)
photo4.remote_data_url = "https://i.imgur.com/FsxDSl7.jpg"
photo4.save


puts "Painting 3 - El abrazo - Seeded ✅"

painting4 = Painting.new(name: "Yellow",
  description: "An abstract painting left to the imagination of the viewer",
  year: 2017,
  price: 25,
  artist: "Jerry McGuire",
  height: 40,
  width: 50,
  available: false,
  style: 'Abstract',
  location: 'London',
  user: user1)
painting4.save!

photo5 = Photo.new(painting: painting4)
photo5.remote_data_url = "https://i.imgur.com/318PSHi.jpg"
photo5.save

puts "Painting 4 - Yellow - Seeded ✅"

painting5 = Painting.new(name: "Rainbow",
  description: "An abstract painting full of geometry",
  year: 2019,
  price: 30,
  artist: "Jack Reacher",
  height: 100,
  width: 50,
  available: false,
  style: 'Abstract',
  location: 'New York',
  user: user2)
painting5.save!

photo6 = Photo.new(painting: painting5)
photo6.remote_data_url = "https://i.imgur.com/bPkQA8l.jpg"
photo6.save

puts "Painting 5 - Rainbow - Seeded ✅"

painting6 = Painting.new(name: "Chillapple",
  description: "An abstract painting full of geometry",
  year: 2015,
  price: 40,
  artist: "Pineapple Supply Company",
  height: 100,
  width: 100,
  available: false,
  style: 'Impressionism',
  location: 'Miami',
  user: user5)
painting6.save!

photo7 = Photo.new(painting: painting6)
photo7.remote_data_url = "https://i.imgur.com/Y1ucQGu.jpg"
photo7.save

puts "Painting 6 - Chillapple - Seeded ✅"

painting7 = Painting.new(name: "Father and son",
  description: "An abstract painting celebrating fatherhood",
  year: 2019,
  price: 50,
  artist: "Alicia Ngomo",
  height: 50,
  width: 30,
  available: false,
  style: 'Abstract',
  location: 'London',
  user: user3)
painting7.save!

photo8 = Photo.new(painting: painting7)
photo8.remote_data_url = "https://i.imgur.com/ynVtm8w.jpg"
photo8.save

photo9 = Photo.new(painting: painting7)
photo9.remote_data_url = "https://i.imgur.com/Tr0YgSV.jpg"
photo9.save

photo10 = Photo.new(painting: painting7)
photo10.remote_data_url = "https://i.imgur.com/OMJbZlb.jpg"
photo10.save

puts "Painting 7 - Father & son - Seeded ✅"


painting8 = Painting.new(name: "The proposal",
  description: "An abstract painting full of geometry",
  year: 2018,
  price: 35,
  artist: "Alicia Ngomo",
  height: 100,
  width: 50,
  available: false,
  style: 'Impressionism',
  location: 'London',
  user: user3)
painting8.save!

photo11 = Photo.new(painting: painting8)
photo11.remote_data_url = "https://i.imgur.com/AjUMP3d.jpg"
photo11.save

photo12 = Photo.new(painting: painting8)
photo12.remote_data_url = "https://i.imgur.com/tNyDZ6m.jpg"
photo12.save

puts "Painting 8 - The proposal - Seeded ✅"

painting9 = Painting.new(name: "Red Rhapsody",
  description: "An abstract painting full of geometry and red color",
  year: 2018,
  price: 35,
  artist: "Alicia Ngomo",
  height: 60,
  width: 40,
  available: false,
  style: 'Impressionism',
  location: 'Chicago',
  user: user3)
painting9.save!

photo13 = Photo.new(painting: painting9)
photo13.remote_data_url = "https://i.imgur.com/d7gsbpp.jpg"
photo13.save

photo14 = Photo.new(painting: painting9)
photo14.remote_data_url = "https://i.imgur.com/aghqL7W.jpg"
photo14.save

photo15 = Photo.new(painting: painting9)
photo15.remote_data_url = "https://i.imgur.com/9kXRBwW.jpg"
photo15.save


puts "Painting 9 - Red Rhapsody - Seeded ✅"



painting10 = Painting.new(name: "Chicago",
  description: "An abstract painting full of geometry and inspired in Chicago",
  year: 2014,
  price: 100,
  artist: "Alicia Ngomo",
  height: 70,
  width: 30,
  available: false,
  style: 'Impressionism',
  location: 'Chicago',
  user: user3)
painting10.save!

photo16 = Photo.new(painting: painting10)
photo16.remote_data_url = "https://i.imgur.com/RaZh9Uk.jpg"
photo16.save

photo17 = Photo.new(painting: painting10)
photo17.remote_data_url = "https://i.imgur.com/QkppAw2.jpg"
photo17.save

puts "Painting 10 - Chicago - Seeded ✅"


puts "Paintings/Artwork - Seeded ✅"


puts "Creating Bookings"
booking1 = Booking.new(
  user: user3,
  painting: painting7,
  start_date: "2019-05-03" ,
  end_date: "2019-05-03",
  total_price: 1000,
  confirmed: nil)
booking1.save!
puts "Booking 1 - Seeded ✅"

booking2 = Booking.new(
  user: user5,
  painting: painting3,
  start_date: "2019-05-03" ,
  end_date: "2019-05-03",
  total_price: 3000,
  confirmed: true)
booking2.save!
puts "Booking 2 - Seeded ✅"

booking3 = Booking.new(
  user: user3,
  painting: painting2,
  start_date: "2019-05-03" ,
  end_date: "2019-05-03",
  total_price: 4500,
  confirmed: false)
booking3.save!
puts "Booking 3 - Seeded ✅"

booking4 = Booking.new(
  user: user5,
  painting: painting5,
  start_date: "2019-05-03" ,
  end_date: "2019-05-03",
  total_price: 300,
  confirmed: nil)
booking4.save!
puts "Booking 4 - Seeded ✅"

booking5 = Booking.new(
  user: user3,
  painting: painting2,
  start_date: "2019-05-03" ,
  end_date: "2019-05-03",
  total_price: 1800,
  confirmed: true)
booking5.save!
puts "Booking 5 - Seeded ✅"

booking6 = Booking.new(
  user: user5,
  painting: painting4,
  start_date: "2019-05-03" ,
  end_date: "2019-05-03",
  total_price: 700,
  confirmed: false)
booking6.save!
puts "Booking 6 - Seeded ✅"

booking7 = Booking.new(
  user: user2,
  painting: painting3,
  start_date: "2019-05-03" ,
  end_date: "2019-05-03",
  total_price: 1200,
  confirmed: false)
booking7.save!
puts "Booking 7 - Seeded ✅"

booking8 = Booking.new(
  user: user4,
  painting: painting6,
  start_date: "2019-05-03" ,
  end_date: "2019-05-03",
  total_price: 800,
  confirmed: false)
booking8.save!
puts "Booking 8 - Seeded ✅"

booking9 = Booking.new(
  user: user1,
  painting: painting7,
  start_date: "2019-05-03" ,
  end_date: "2019-05-03",
  total_price: 500,
  confirmed: true)
booking9.save!
puts "Booking 9 - Seeded ✅"

booking10 = Booking.new(
  user: user4,
  painting: painting3,
  start_date: "2019-05-03" ,
  end_date: "2019-05-03",
  total_price: 600,
  confirmed: nil)
booking10.save!
puts "Booking 10 - Seeded ✅"

booking11 = Booking.new(
  user: user1,
  painting: painting3,
  start_date: "2019-05-03" ,
  end_date: "2019-05-03",
  total_price: 450,
  confirmed: nil)
booking11.save!
puts "Booking11 - Seeded ✅"

puts "🥳 🎊 🎉 👯‍♂️ 👯‍♀️ Congratulations, database succesfully seeded! 👯‍♀️ 👯‍♂️ 🎉 🎊 🥳"


