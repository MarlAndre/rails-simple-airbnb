# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

4.times do
  # pic = 'https://source.unsplash.com/300x300/?flats'
  flat = Flat.new(
    name: Faker::Marketing.buzzwords,
    address: Faker::Address.street_address,
    # picture_url: pic,
    description: 'brand new flat for renting',
    price_per_night: rand(50..500),
    number_of_guests: rand(1..6)
  )
  flat.save!
end
