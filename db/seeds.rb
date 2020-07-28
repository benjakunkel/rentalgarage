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

file = URI.open('https://res.cloudinary.com/ayegora/image/upload/v1595970129/5pzg8lyo5tv26q0xfpg109ca8g59.jpg')
a = Garage.new(user_id: 1, title: 'Garage Olavarria', address: 'Bahia Blanca 551', description:'un garage perfecto para auto chico. Cubierto', phone_number:'23648888888', availability: true, price_per_hour: 50, price_per_day: 200, dimensions:'2x50x10')
a.photo.attach(io: file, filename: '5pzg8lyo5tv26q0xfpg109ca8g59.jpg', content_type: 'image/jpg')
a.save!

fileb = URI.open('https://res.cloudinary.com/ayegora/image/upload/v1595965605/techo_2_d8836x.jpg')
a = Garage.new(user_id: 1, title: 'Cochera Constitucion', address: ' Gral Belgrano 1045', description:'Lugar ideal para moto, auto chico. Techado', phone_number:'2364213123', availability: true, price_per_hour: 45, price_per_day: 180, dimensions:'3x4')
a.photo.attach(io: fileb, filename: 'techo_2_d8836x.jpg', content_type: 'image/jpg')
a.save!

filec = URI.open('https://res.cloudinary.com/ayegora/image/upload/v1595965605/garage4_ljgxyt.jpg')
a = Garage.new(user_id: 1, title: 'Cochera Lanus', address: 'Sarmiento 123', description:'Garage grande para camioneta', phone_number:'112327372', availability: true, price_per_hour: 70, price_per_day: 280, dimensions:'2x50x10')
a.photo.attach(io: filec, filename: 'garage4_ljgxyt.jpg', content_type: 'image/jpg')
a.save!
##########
filed = URI.open('https://res.cloudinary.com/ayegora/image/upload/v1595965604/garage5_yctl9a.jpg')
a = Garage.new(user_id: 1, title: 'Garage Almagro', address: 'Av. Rivadavia 3781', description:'Espacio reducido para motos', phone_number:'23648888888', availability: true, price_per_hour: 32, price_per_day: 200, dimensions:'2x50x10')
a.photo.attach(io: filed, filename: 'garage5_yctl9a.jpg', content_type: 'image/jpg')
a.save!
##########!!!!
filee = URI.open('https://res.cloudinary.com/ayegora/image/upload/v1595965603/garage3_hlyy3b.jpg')
a = Garage.new(user_id: 1, title: 'Cochera Junin', address: 'Ataliva roca 26', description:'Cochera para dos autos,camioneta', phone_number:'23648888888', availability: true, price_per_hour: 80, price_per_day: 400, dimensions:'2x50x10')
a.photo.attach(io: filee, filename: 'garage3_hlyy3b.jpg', content_type: 'image/jpg')
a.save!
#####!!!
filef = URI.open('https://res.cloudinary.com/ayegora/image/upload/v1595965603/garage7_xrm2wf.jpg')
a = Garage.new(user_id: 1, title: 'Garage Boedo', address: 'Mayor Lopez y Laprida', description:'Espacio cubierto, ideal para auto chico o moto', phone_number:'23648888888', availability: true, price_per_hour: 61, price_per_day: 200, dimensions:'2x50x10')
a.photo.attach(io: filef, filename: 'garage7_xrm2wf.jpg', content_type: 'image/jpg')
a.save!
########!!!
fileg = URI.open('https://res.cloudinary.com/ayegora/image/upload/v1595965604/garage6_qiahlt.jpg')
a = Garage.new(user_id: 1, title: 'Alquilo Cochera', address: 'Aparicio 21', description:'Lugar reducito para vehiculo,zona segura', phone_number:'23648888888', availability: true, price_per_hour: 75, price_per_day: 200, dimensions:'2x50x10')
a.photo.attach(io: fileg, filename: 'garage6_qiahlt.jpg', content_type: 'image/jpg')
a.save!
######!!!!
fileh = URI.open('https://res.cloudinary.com/ayegora/image/upload/v1595973462/garage9_vfi2le.jpg')
a = Garage.new(user_id: 1, title: 'Renta Garage', address: 'Av. San Martin 1178', description:'Zona seguro, espacio techado', phone_number:'23648888888', availability: true, price_per_hour: 68, price_per_day: 200, dimensions:'2x50x10')
a.photo.attach(io: fileh, filename: 'garage9_vfi2le.jpg', content_type: 'image/jpg')
a.save!
######!!!
filei = URI.open('https://res.cloudinary.com/ayegora/image/upload/v1595973547/garage10_ehdojt.jpg')
a = Garage.new(user_id: 1, title: 'Bragado Alquila', address: 'Francia 368', description:'Espacio amplio para camioneta,automotor', phone_number:'23648888888', availability: true, price_per_hour: 95, price_per_day: 200, dimensions:'2x50x10')
a.photo.attach(io: filei, filename: 'garage10_ehdojt.jpg', content_type: 'image/jpg')
a.save!
