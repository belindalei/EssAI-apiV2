# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Response.destroy_all
User.destroy_all
Essay.destroy_all


user_a = User.create!(name:"belinda", password: "oassword", email: "sample1@email.com")
user_b = User.create!(name: "steven", password: "testingasd", email: "sample2@email.com")
puts "done making users"


essay_a = Essay.create!(title: "Hello World")
essay_b = Essay.create!(title: "My little pony")
puts "done making essays"


response_a = Response.create!(paragraph: "I've always liked oranges", essay_id: essay_a.id, user_id: user_a.id, saved: true)
response_b = Response.create!(paragraph: "But apples are better", essay_id: essay_b.id, user_id: user_b.id, saved: false)

puts "done making responses"