require "open-uri"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Booking.destroy_all
Flat.destroy_all
User.destroy_all

user1 = User.create(email: "simon@hotmail.com", password: "123456")
user2 = User.create(email: "nik@gmail.com", password: "123456")

puts "Creating flats.."
#1
file1 = URI.open('https://images.pexels.com/photos/2459/stairs-home-loft-lifestyle.jpg?auto=compress&cs=tinysrgb&dpr=2&w=500')
file2 = URI.open('https://images.pexels.com/photos/584399/living-room-couch-interior-room-584399.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500')
file3 = URI.open('https://images.pexels.com/photos/1879061/pexels-photo-1879061.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500')
flat1 = Flat.create!(user: user1, title: 'Spacious Loft in Barcelona', city: "Barcelona", price: 250, description: "Hi, my name is Lucia. I'm 74 years old and as my husband passed away 3 years ago I am feeling very lonely. ;) Looking for a nice student to share my flat with and have some deeeeep convos...", groceries: true, sexy_time: true, cooking: true)
flat1.photos.attach(io: file1, filename: 'flat1.png', content_type: 'image/png')
flat1.photos.attach(io: file2, filename: 'flat1.png', content_type: 'image/png')
flat1.photos.attach(io: file3, filename: 'flat1.png', content_type: 'image/png')

#2
file1 = URI.open('https://images.pexels.com/photos/2459/stairs-home-loft-lifestyle.jpg?auto=compress&cs=tinysrgb&dpr=2&w=500')
file2 = URI.open('https://images.pexels.com/photos/584399/living-room-couch-interior-room-584399.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500')
file3 = URI.open('https://images.pexels.com/photos/1879061/pexels-photo-1879061.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500')
flat2 = Flat.create!(user: user1, title: 'Neat appartment in Borne', city: "Barcelona", price: 250, description: "Hi, my name is Lucia. I'm 74 years old and as my husband passed away 3 years ago I am feeling very lonely. ;) Looking for a nice student to share my flat with and have some deeeeep convos...", groceries: true, sexy_time: true, cooking: true)
flat2.photos.attach(io: file2, filename: 'flat1.png', content_type: 'image/png')
flat2.photos.attach(io: file1, filename: 'flat1.png', content_type: 'image/png')
flat2.photos.attach(io: file3, filename: 'flat1.png', content_type: 'image/png')

#3
file1 = URI.open('https://images.pexels.com/photos/2459/stairs-home-loft-lifestyle.jpg?auto=compress&cs=tinysrgb&dpr=2&w=500')
file2 = URI.open('https://images.pexels.com/photos/584399/living-room-couch-interior-room-584399.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500')
file3 = URI.open('https://images.pexels.com/photos/1879061/pexels-photo-1879061.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500')
flat3 = Flat.create!(user: user1, title: 'Cosy flat + rooftop terrasse', city: "Barcelona", price: 170, description: "Hi, my name is Lucia. I'm 74 years old and as my husband passed away 3 years ago I am feeling very lonely. ;) Looking for a nice student to share my flat with and have some deeeeep convos...", groceries: true, sexy_time: true, cooking: true)
flat3.photos.attach(io: file3, filename: 'flat1.png', content_type: 'image/png')
flat3.photos.attach(io: file2, filename: 'flat1.png', content_type: 'image/png')
flat3.photos.attach(io: file1, filename: 'flat1.png', content_type: 'image/png')

#4
file4 = URI.open('https://images.pexels.com/photos/4703/inside-apartment-design-home.jpg?auto=compress&cs=tinysrgb&dpr=2&w=500')
file5 = URI.open('https://images.pexels.com/photos/3581753/pexels-photo-3581753.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500')
file6 = URI.open('https://images.pexels.com/photos/3597114/pexels-photo-3597114.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500')
flat4 = Flat.create!(user: user1, title: 'Urban villa in city center', city: "Barcelona", price: 150, description: "Hi, my name is Lucia. I'm 74 years old and as my husband passed away 3 years ago I am feeling very lonely. ;) Looking for a nice student to share my flat with and have some deeeeep convos...", groceries: true, sexy_time: true, cooking: true)
flat4.photos.attach(io: file4, filename: 'flat4.png', content_type: 'image/png')
flat4.photos.attach(io: file5, filename: 'flat5.png', content_type: 'image/png')
flat4.photos.attach(io: file6, filename: 'flat6.png', content_type: 'image/png')

#5
file4 = URI.open('https://images.pexels.com/photos/4703/inside-apartment-design-home.jpg?auto=compress&cs=tinysrgb&dpr=2&w=500')
file5 = URI.open('https://images.pexels.com/photos/3581753/pexels-photo-3581753.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500')
file6 = URI.open('https://images.pexels.com/photos/3597114/pexels-photo-3597114.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500')
flat5 = Flat.create!(user: user1, title: 'Industrial Loft in El Gótico', city: "Barcelona", price: 190, description: "Hi, my name is Lucia. I'm 74 years old and as my husband passed away 3 years ago I am feeling very lonely. ;) Looking for a nice student to share my flat with and have some deeeeep convos...", groceries: true, sexy_time: true, cooking: true)
flat5.photos.attach(io: file5, filename: 'flat5.png', content_type: 'image/png')
flat5.photos.attach(io: file4, filename: 'flat4.png', content_type: 'image/png')
flat5.photos.attach(io: file6, filename: 'flat6.png', content_type: 'image/png')

#6
file4 = URI.open('https://images.pexels.com/photos/4703/inside-apartment-design-home.jpg?auto=compress&cs=tinysrgb&dpr=2&w=500')
file5 = URI.open('https://images.pexels.com/photos/3581753/pexels-photo-3581753.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500')
file6 = URI.open('https://images.pexels.com/photos/3597114/pexels-photo-3597114.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500')
flat6 = Flat.create!(user: user2, title: 'Old appartment + jacuzzi', city: "Barcelona", price: 200, description: "Hi, my name is Lucia. I'm 74 years old and as my husband passed away 3 years ago I am feeling very lonely. ;) Looking for a nice student to share my flat with and have some deeeeep convos...", groceries: true, sexy_time: true, cooking: true)
flat6.photos.attach(io: file6, filename: 'flat6.png', content_type: 'image/png')
flat6.photos.attach(io: file4, filename: 'flat4.png', content_type: 'image/png')
flat6.photos.attach(io: file5, filename: 'flat5.png', content_type: 'image/png')
#7
file7 = URI.open('https://images.pexels.com/photos/3965520/pexels-photo-3965520.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500')
file8 = URI.open('https://images.pexels.com/photos/3679601/pexels-photo-3679601.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500')
file9 = URI.open('https://images.pexels.com/photos/3875428/pexels-photo-3875428.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500')
flat7 = Flat.create!(user: user2, title: 'Best flat ever', city: "Barcelona", price: 120, description: "Hi, my name is Lucia. I'm 74 years old and as my husband passed away 3 years ago I am feeling very lonely. ;) Looking for a nice student to share my flat with and have some deeeeep convos...", groceries: true, sexy_time: true, cooking: true)
flat7.photos.attach(io: file7, filename: 'flat7.png', content_type: 'image/png')
flat7.photos.attach(io: file8, filename: 'flat8.png', content_type: 'image/png')
flat7.photos.attach(io: file9, filename: 'flat9.png', content_type: 'image/png')

#8
file7 = URI.open('https://images.pexels.com/photos/3965520/pexels-photo-3965520.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500')
file8 = URI.open('https://images.pexels.com/photos/3679601/pexels-photo-3679601.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500')
file9 = URI.open('https://images.pexels.com/photos/3875428/pexels-photo-3875428.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500')
flat8 = Flat.create!(user: user2, title: 'Bar-style appartment', city: "Barcelona", price: 250, description: "Hi, my name is Lucia. I'm 74 years old and as my husband passed away 3 years ago I am feeling very lonely. ;) Looking for a nice student to share my flat with and have some deeeeep convos...", groceries: true, sexy_time: true, cooking: true)
flat8.photos.attach(io: file8, filename: 'flat8.png', content_type: 'image/png')
flat8.photos.attach(io: file7, filename: 'flat7.png', content_type: 'image/png')
flat8.photos.attach(io: file9, filename: 'flat9.png', content_type: 'image/png')

#9
file7 = URI.open('https://images.pexels.com/photos/3965520/pexels-photo-3965520.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500')
file8 = URI.open('https://images.pexels.com/photos/3679601/pexels-photo-3679601.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500')
file9 = URI.open('https://images.pexels.com/photos/3875428/pexels-photo-3875428.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500')
flat9 = Flat.create!(user: user2, title: 'Underground appartment', city: "Barcelona", price: 270, description: "Hi, my name is Lucia. I'm 74 years old and as my husband passed away 3 years ago I am feeling very lonely. ;) Looking for a nice student to share my flat with and have some deeeeep convos...", groceries: true, sexy_time: true, cooking: true)
flat9.photos.attach(io: file9, filename: 'flat9.png', content_type: 'image/png')
flat9.photos.attach(io: file7, filename: 'flat7.png', content_type: 'image/png')
flat9.photos.attach(io: file8, filename: 'flat8.png', content_type: 'image/png')


#Bookings
booking1 = Booking.create!(user: user1, flat: flat7, status: "pending", start_date: "2020-04-02", end_date: "2020-04-02")
booking2 = Booking.create!(user: user2, flat: flat1, status: "pending", start_date: "2020-06-03", end_date: "2020-06-01")
booking3 = Booking.create!(user: user2, flat: flat2, status: "confirmed", start_date: "2020-02-26", end_date: "2020-03-02")


puts "Flats created."
