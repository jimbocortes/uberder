# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#

type = ["Studio", "Apartment", "Condo", "Room"]
price = [2000, 2500, 3000, 3500, 4000]

5.times do |i|
  Property.create(
    price: price[Random.rand(4)],
    type:  type[Random.rand(4)],
    city: "Cebu", 
    bathrooms: Random.rand(2) + 1,
    bedrooms: Random.rand(2) + 1,
    address: "Lahug",
    description: "Lorem Ipsom dolor sit amet.")
end
