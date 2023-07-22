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

lambo1_image1 = URI.open("https://res.cloudinary.com/dk5rblvf2/image/upload/v1689956018/development/ymh2bgtuuoo1s3md2i5yrdrnbfjy.jpg")
lambo1_image2 = URI.open("https://res.cloudinary.com/dk5rblvf2/image/upload/v1689959124/development/cfarusmj1yzixt0otengm9i45gse.jpg")
lambo1_image3 = URI.open("https://res.cloudinary.com/dk5rblvf2/image/upload/v1689959121/development/3qp2y1ssmfralmt1i79c6lu1g24k.jpg")
lambo1.photos.attach(io: lambo1_image1, filename: "picture")
lambo1.photos.attach(io: lambo1_image2, filename: "picture")
lambo1.photos.attach(io: lambo1_image3, filename: "picture")
lambo1.save


lambo2 = Lambo.create!(model: "Aventador", price: 3000000, year: 2002, description: "Woohoooo...you will LOVE this ride!!", user: user1)

lambo2_image1 = URI.open("https://res.cloudinary.com/dk5rblvf2/image/upload/v1689995394/production/vdowuiyckq9lwy9httaijhs23ggg.jpg")
lambo2_image2 = URI.open("https://res.cloudinary.com/dk5rblvf2/image/upload/v1689995392/production/voou8q7gzllyo794quiz1dcr9lm2.jpg")
lambo2_image3 = URI.open("https://res.cloudinary.com/dk5rblvf2/image/upload/v1690000849/gabor-papp-k688MQzA3LI-unsplash_x0uwrm.jpg")
lambo2.photos.attach(io: lambo2_image1, filename: "picture")
lambo2.photos.attach(io: lambo2_image2, filename: "picture")
lambo2.photos.attach(io: lambo2_image3, filename: "picture")
lambo2.save


lambo3 = Lambo.create!(model: "Revuelto", price: 9000000, year: 2022, description: "Just before the 60th anniversary of the marque, Lamborghini unveiled Revuelto, the first HPEV (High Performance Electrified Vehicle) hybrid super sports car. With the Revuelto, Lamborghini has established a new benchmark in performance, on-board technology, and driving pleasure. ", user: user1)

lambo3_image1 = URI.open("https://res.cloudinary.com/dk5rblvf2/image/upload/v1690001057/karol-smoczynski-PlhpEa-WG6E-unsplash_nlevny.jpg")
lambo3_image2 = URI.open("https://res.cloudinary.com/dk5rblvf2/image/upload/v1690001058/marc-kleen-8hU6vtwY8l8-unsplash_1_im0r4w.jpg")
lambo3_image3 = URI.open("https://res.cloudinary.com/dk5rblvf2/image/upload/v1690001144/viktor-theo-7WocfmZGakA-unsplash_znz9fj.jpg")
lambo3.photos.attach(io: lambo3_image1, filename: "picture")
lambo3.photos.attach(io: lambo3_image2, filename: "picture")
lambo3.photos.attach(io: lambo3_image3, filename: "picture")
lambo3.save
