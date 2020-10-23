# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "faker"

10.times do
  dogsitters = Dogsitter.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, phone: Faker::PhoneNumber.cell_phone)
end

10.times do
  dogs = Dog.create(first_name: Faker::Creature::Dog.name, race: Faker::Creature::Dog.breed, age: Faker::Creature::Dog.age)
end

10.times do
  cities = City.create(name: Faker::Address.city, zip_code: Faker::Address.zip_code)
end

10.times do
  strolls = Stroll.create(dogsitter: Dogsitter.all.sample, dog: Dog.all.sample, city: City.all.sample, date: Faker::Date.backward(days:15))
end

