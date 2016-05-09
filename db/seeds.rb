# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# 10.times do
# User.create(username: Faker::Name.name, fname: Faker::Name.first_name,lname: Faker::Name.last_name, email: Faker::Internet.email, password: "1")
# end

# 10.times do
# Post.create(body: Faker::Lorem.paragraph, user_id: Faker::Number.between(1, 10))
# end

# 10.times do
# Comment.create(body: Faker::Lorem.sentence, user_id: Faker::Number.between(1, 10), post_id: Faker::Number.between(1, 10))
# end

User.delete_all

Post.delete_all

Comment.delete_all