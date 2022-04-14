# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Flat.destroy_all

4.times do
  flat_picture = "https://images.unsplash.com/photo-1556784344-ad913c73cfc4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8ZmxhdHN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"
  flat = Flat.create!(
    name: Faker::Marketing.buzzwords,
    address: Faker::Address.street_address,
    picture: flat_picture,
    description: 'brand new flat for renting',
    price_per_night: rand(50..500),
    number_of_guests: rand(1..6)
  )
end
