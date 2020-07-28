# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
pepe = User.new(email: "pepe@hotmail.com", password:"asdasd1")
pepe.save

file = URI.open('https://res.cloudinary.com/ayegora/image/upload/v1595965604/garage6_qiahlt.jpg')
a = Garage.new(user_id: 1, title: 'Garage Olavarria', address: 'Bahia Blanca 551', description:'un garage perfecto para auto chico. Cubierto', phone_number:'23648888888', availability: true, price_per_hour: 50, price_per_day: 200, dimensions:'2x50x10')
a.photo.attach(io: file, filename: 'garage6_qiahlt.jpg', content_type: 'image/jpg')
a.save!
