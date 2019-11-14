# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

admin = User.create(name: "Amit", email: "amit_nyc@live.com", password_digest:BCrypt::Password.create('password'), phone_number: 3476227899, username: "Amit", type: "Admin")

customer1 = User.create(name: "John", email: "john@live.com", password_digest:BCrypt::Password.create('password'), phone_number: 1234567890, username: "John", type: "Customer")

game1 = Game.create(name: "Vader Immortal", description: "Have you tried out The Void yet? It's an amazing location-based VR experience from ILMxLAB and now the team has created a home-based VR experience for the Oculus Quest and it's extremely fun and exciting for Star Wars fans. It's a narrative-driven game that puts you face-to-face with Vader, offers up light saber training and allows you to explore some of the mystical depths of Mustafa. The best news is, this is just the first part of a three-part series, fingers crossed the next two instalments will be just as good.", image: "https://cdn.mos.cms.futurecdn.net/VrTjbvEwvfLYBbTYQQz7CU-650-80.jpg") 
