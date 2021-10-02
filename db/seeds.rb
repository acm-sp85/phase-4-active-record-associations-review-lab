# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

puts "Creating new rides..."
30.times{Ride.create(taxi_id: rand(3), passenger_id:rand(10))}
10.times{Passenger.create(name: Faker::Name.name)}
3.times{Taxi.create(serial_number: Faker::Alphanumeric.alpha(number: 10))}
