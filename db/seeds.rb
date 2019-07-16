# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Painting.destroy_all
User.destroy_all

user1 = User.create!(first_name: "Jerry", last_name: "McGuire", email: "jerry@gmail.com", password: "123456", artist: true);
user2 = User.create!(first_name: "Ana", last_name: "Lopez", email: "ana@gmail.com", password: "123456", artist: false);
user3 = User.create!(first_name: "Alicia", last_name: "Ngomo", email: "alicia@gmail.com", password: "123456", artist: true);
user4 = User.create!(first_name: "Jacob", last_name: "Morton", email: "jacob@gmail.com", password: "123456", artist: false);
user5 = User.create!(first_name: "Adam", last_name: "McCallister", email: "adam@gmail.com", password: "123456", artist: false);

painting1 = Painting.new(name: "Red Yellow Blue",
  description: "An abstract painting full of geometry",
  year: 1965,
  price: 2000000,
  artist: "Wassily Kandinsky",
  available: false,
  style: 'Abstract',
  user: user1)
painting1.remote_photo_url = "https://res.cloudinary.com/dtybbw7rx/image/upload/v1563202483/v5chpr5urbu451ucyimz.jpg"
painting1.save!

painting2 = Painting.new(name: "Roses Bloom",
  description: "A realistic depiction of nature. Strong contrast and focused lighting",
  year: 2018,
  price: 565,
  artist: "Milena Gomez",
  available: true,
  style: 'Nature',
  user: user2)
painting2.remote_photo_url = 'https://res.cloudinary.com/dtybbw7rx/image/upload/v1563208305/roses_bloom_q3k4cb.jpg'
painting2.save!

painting3 = Painting.new(name: "El abrazo",
  description: "Two people sharing a strong hug",
  year: 2009,
  price: 750,
  artist: "Alicia Ngomo",
  available: false,
  style: 'Nude',
  user: user3)
painting3.remote_photo_url = "https://res.cloudinary.com/dtybbw7rx/image/upload/v1563211595/El_abrazo_j6r3jn.jpg"
painting3.save!

painting4 = Painting.new(name: "Yellow",
  description: "An abstract painting left to the imagination of the viewer",
  year: 2017,
  price: 750,
  artist: "Jerry McGuire",
  available: false,
  style: 'Abstract',
  user: user1)
painting4.remote_photo_url = "https://res.cloudinary.com/dtybbw7rx/image/upload/v1563208306/yellow_zzbcsi.jpg"
painting4.save!

painting5 = Painting.new(name: "Rainbox",
  description: "An abstract painting full of geometry",
  year: 2019,
  price: 450,
  artist: "Jack Reacher",
  available: false,
  style: 'Abstract',
  user: user2)
painting5.remote_photo_url = "https://res.cloudinary.com/dtybbw7rx/image/upload/v1563208305/rainbow_u2b83u.jpg"
painting5.save!


