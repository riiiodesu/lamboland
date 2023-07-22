require "open-uri"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Booking.destroy_all
Lambo.destroy_all
User.destroy_all

user1 = User.create!(
  email: "hogehogeh@gmail.com",
  password: "password"
)

lambo1 = Lambo.create!(model: "Aventador", price: 5000000, year: 2021, description: "This is an amazing car. DESIGNED TO PUSH BEYOND PERFORMANCE
  Revolutionary thinking is at the heart of every idea from Automobili Lamborghini. Whether it is aerospace-inspired design or technologies applied to the naturally aspirated V12 engine or carbon-fiber structure, going beyond accepted limits is part of our philosophy.", user: user1)

lambo1_image1 = URI.open("https://source.unsplash.com/h1I6_kwAtLU")
lambo1_image2 = URI.open("https://source.unsplash.com/ESXhISyyHho")
lambo1_image3 = URI.open("https://source.unsplash.com/fbG0QTZasKg")
lambo1.photos.attach(io: lambo1_image1, filename: "picture")
lambo1.photos.attach(io: lambo1_image2, filename: "picture")
lambo1.photos.attach(io: lambo1_image3, filename: "picture")
lambo1.save


lambo2 = Lambo.create!(model: "Aventador", price: 3000000, year: 2002, description: "Woohoooo...you will LOVE this ride!!", user: user1)

lambo2_image1 = URI.open("https://source.unsplash.com/eZQeLcpgTyw")
lambo2_image2 = URI.open("https://source.unsplash.com/oefX48E9Qck")
lambo2_image3 = URI.open("https://source.unsplash.com/D1ikFIycIHk")
lambo2.photos.attach(io: lambo2_image1, filename: "picture")
lambo2.photos.attach(io: lambo2_image2, filename: "picture")
lambo2.photos.attach(io: lambo2_image3, filename: "picture")
lambo2.save


lambo3 = Lambo.create!(model: "Revuelto", price: 9000000, year: 2022, description: "Just before the 60th anniversary of the marque, Lamborghini unveiled Revuelto, the first HPEV (High Performance Electrified Vehicle) hybrid super sports car. With the Revuelto, Lamborghini has established a new benchmark in performance, on-board technology, and driving pleasure. ", user: user1)

lambo3_image1 = URI.open("https://source.unsplash.com/PlhpEa-WG6E")
lambo3_image2 = URI.open("https://source.unsplash.com/VsXHzSdwuik")
lambo3_image3 = URI.open("https://source.unsplash.com/VsXHzSdwuik")
lambo3.photos.attach(io: lambo3_image1, filename: "picture")
lambo3.photos.attach(io: lambo3_image2, filename: "picture")
lambo3.photos.attach(io: lambo3_image3, filename: "picture")
lambo3.save

lambo4 = Lambo.create!(model: "Revuelto", price: 9000000, year: 2022, description: "Just before the 60th anniversary of the marque, Lamborghini unveiled Revuelto, the first HPEV (High Performance Electrified Vehicle) hybrid super sports car. With the Revuelto, Lamborghini has established a new benchmark in performance, on-board technology, and driving pleasure. ", user: user1)

lambo4_image1 = URI.open("https://source.unsplash.com/S5o_y8XM7yI")
lambo4_image2 = URI.open("https://source.unsplash.com/KKebd8YOX84")
lambo4_image3 = URI.open("https://source.unsplash.com/pyGfnlF12uI")
lambo4.photos.attach(io: lambo4_image1, filename: "picture")
lambo4.photos.attach(io: lambo4_image2, filename: "picture")
lambo4.photos.attach(io: lambo4_image3, filename: "picture")
lambo4.save
