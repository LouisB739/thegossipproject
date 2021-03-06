# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

User.destroy_all
City.destroy_all
Gossip.destroy_all
Tag.destroy_all
JoinTagGossip.destroy_all
JoinPm.destroy_all
PrivateMessage.destroy_all
puts "tout est détruit"

10.times do 
	City.create!(name: Faker::Address.city, zip_code: Faker::Address.zip_code)
end
puts "creation des villes"
10.times do 
	User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Lorem.paragraph, email: Faker::Internet.email, age: rand(15..105), city_id: City.all.sample.id,password:"SALUTCAVA")
end
puts "creation des users"

20.times do 
	Gossip.create!(title: Faker::DcComics.title,content:Faker::ChuckNorris.fact, user_id: User.all.sample.id)
end
puts "creation des gossips"

10.times do 
	Tag.create!(title: Faker::Lorem.paragraph)
end
puts "creation des tags"

Gossip.all.each{|gsp| JoinTagGossip.create!(gossip_id: gsp.id, tag_id: Tag.all.sample.id)}

10.times do  
	PrivateMessage.create!(content: Faker::Lorem.sentences, user_id: User.all.sample.id)
end
puts "creation des private message"

20.times do 
	JoinPm.create!(user_id: User.all.sample.id, private_message_id: PrivateMessage.all.sample.id)
end
puts "creation des joins"