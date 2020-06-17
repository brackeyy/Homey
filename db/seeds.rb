require "open-uri"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(email: "ggg@ggg.com", password: "123456")
user2 = User.create(email: "fff@ggg.com", password: "123456")

puts "Creating flats.."
#1
file1 = URI.open('https://images.pexels.com/photos/2459/stairs-home-loft-lifestyle.jpg?auto=compress&cs=tinysrgb&dpr=2&w=500')
flat1 = Flat.new(title: 'Spacious Loft in Barcelona', city: "Barcelona", price: 250, description: "Hi, my name is Lucia. I'm 74 years old and as my husband passed away 3 years ago I am feeling very lonely. ;) Looking for a nice student to share my flat with and have some deeeeep convos...")
flat1.photo.attach(io: file1, filename: 'flat1.png', content_type: 'image/png')
#2
file2 = URI.open('https://images.pexels.com/photos/584399/living-room-couch-interior-room-584399.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500')
flat2 = Flat.new(title: 'Neat appartment in Borne', city: "Barcelona", price: 250, description: "Hi, my name is Lucia. I'm 74 years old and as my husband passed away 3 years ago I am feeling very lonely. ;) Looking for a nice student to share my flat with and have some deeeeep convos...")
flat2.photo.attach(io: file2, filename: 'flat2.png', content_type: 'image/png')
#3
file3 = URI.open('https://images.pexels.com/photos/1879061/pexels-photo-1879061.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500')
flat3 = Flat.new(title: 'Cosy flat + rooftop terrasse', city: "Barcelona", price: 170, description: "Hi, my name is Lucia. I'm 74 years old and as my husband passed away 3 years ago I am feeling very lonely. ;) Looking for a nice student to share my flat with and have some deeeeep convos...")
flat3.photo.attach(io: file3, filename: 'flat3.png', content_type: 'image/png')
#4
file4 = URI.open('https://images.pexels.com/photos/4703/inside-apartment-design-home.jpg?auto=compress&cs=tinysrgb&dpr=2&w=500')
flat4 = Flat.new(title: 'Urban villa in city center', city: "Barcelona", price: 150, description: "Hi, my name is Lucia. I'm 74 years old and as my husband passed away 3 years ago I am feeling very lonely. ;) Looking for a nice student to share my flat with and have some deeeeep convos...")
flat4.photo.attach(io: file4, filename: 'flat4.png', content_type: 'image/png')
#5
file5 = URI.open('https://images.pexels.com/photos/3581753/pexels-photo-3581753.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500')
flat5 = Flat.new(title: 'Industrial Loft in El Gótico', city: "Barcelona", price: 190, description: "Hi, my name is Lucia. I'm 74 years old and as my husband passed away 3 years ago I am feeling very lonely. ;) Looking for a nice student to share my flat with and have some deeeeep convos...")
flat5.photo.attach(io: file5, filename: 'flat5.png', content_type: 'image/png')
#6
file6 = URI.open('https://images.pexels.com/photos/3597114/pexels-photo-3597114.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500')
flat6 = Flat.new(title: 'Old fabric appartment with jacuzzi', city: "Barcelona", price: 200, description: "Hi, my name is Lucia. I'm 74 years old and as my husband passed away 3 years ago I am feeling very lonely. ;) Looking for a nice student to share my flat with and have some deeeeep convos...")
flat6.photo.attach(io: file6, filename: 'flat6.png', content_type: 'image/png')
#7
file7 = URI.open('https://images.pexels.com/photos/3965520/pexels-photo-3965520.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500')
flat7 = Flat.new(title: 'Best flat ever', city: "Barcelona", price: 120, description: "Hi, my name is Lucia. I'm 74 years old and as my husband passed away 3 years ago I am feeling very lonely. ;) Looking for a nice student to share my flat with and have some deeeeep convos...")
flat7.photo.attach(io: file7, filename: 'flat7.png', content_type: 'image/png')
#8
file8 = URI.open('https://images.pexels.com/photos/3679601/pexels-photo-3679601.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500')
flat8 = Flat.new(title: 'Bar-style appartment', city: "Barcelona", price: 250, description: "Hi, my name is Lucia. I'm 74 years old and as my husband passed away 3 years ago I am feeling very lonely. ;) Looking for a nice student to share my flat with and have some deeeeep convos...")
flat8.photo.attach(io: file8, filename: 'flat8.png', content_type: 'image/png')
#9
file9 = URI.open('https://images.pexels.com/photos/3875428/pexels-photo-3875428.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500')
flat9 = Flat.new(title: 'Underground appartment', city: "Barcelona", price: 270, description: "Hi, my name is Lucia. I'm 74 years old and as my husband passed away 3 years ago I am feeling very lonely. ;) Looking for a nice student to share my flat with and have some deeeeep convos...")
flat9.photo.attach(io: file9, filename: 'flat9.png', content_type: 'image/png')

puts "Flats created."
