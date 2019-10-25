# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Dog.destroy_all
Dogsitter.destroy_all
Stroll.destroy_all
City.destroy_all

10.times do
    city = City.create!(city_name: Faker::Address.city)
    dog = Dog.create!(race: Faker::Creature::Dog.breed, city_name: city_name)
    patient = Patient.create!(name: Faker::Name.first_name, city_name: city_name)
    stroll = Stroll.create!(date: Faker::Date.in_date_period, dog: dog, dogsitter: dogsitter, city_name: city_name)
end