# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'

user_array = []
city_array = []
listing_array = []
bed = [1,2,3,4,5,6]





10.times do |index|

  u = User.create(email: Faker::Internet.email, description: Faker::Lorem.sentence(word_count: 10), phone_number: "0033600000000"  )
  user_array << u
  c = City.create(name: Faker::Address.city , zip_code: Faker::Address.zip_code  )
  city_array << c

end

10.times do |index|

  l = Listing.create(available_beds: bed.sample, price: Faker::Number.between(from: 60, to: 140), description: Faker::Lorem.sentence(word_count: 40), wifi: Faker::Boolean.boolean, welcome_message: Faker::Lorem.sentence(word_count: 5), user: user_array.sample, city: city_array.sample)
  listing_array << l

end

10.times do |index|

  Reservation.create(start_date: Faker::Date.forward(days: 28) , end_date: Faker::Date.forward(days: 68),user: user_array.sample, listing: listing_array.sample)

end
