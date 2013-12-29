# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require "open-uri"

User.destroy_all



# Users
user1 = User.create(first_name: "Sharif", last_name:"Zubi", username: "sharifzubi", email: "sharif@sharif.com", favourite_location: "Chelsea", password: "password", about_me: "", admin: true, confirmed_at: DateTime.now)
