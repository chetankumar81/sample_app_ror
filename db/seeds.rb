# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(name:                  "chetan",
             email:                 "chetan@gmail.com",
             password:              "chetan",
             password_confirmation: "chetan",
             admin:                 true)

User.create!(name:                  "chinku",
             email:                 "chinku@gmail.com",
             password:              "chetan",
             password_confirmation: "chetan",
             admin:                 false)

99.times do |n|
  name     = Faker::Name.name
  email    = "example-#{n + 1}@railstutorial.org"
  password = "chetan"
  User.create!(name:                  name,
               email:                 email,
               password:              password,
               password_confirmation: password)
end