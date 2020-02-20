# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
t.string "first_name"
t.string "last_name"
t.integer "age"
t.string "hair_color"
t.string "eye_color"
t.integer "gender"
t.boolean "alive"
10.times do 
  person = Person.create(
    first_name: Faker::Name.name,
    last_name: Faker::Name.name,
    age: rand(18...65),
    hair_color: Faker::HairColor.hair_color,
    eye_color:Faker::EyeColor.eye_color,
    gender: Faker::Gender.gender,
    alive: rand(2).odd? ? true : false
  )
  end 
end 