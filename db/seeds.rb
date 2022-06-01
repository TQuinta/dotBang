# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

# seeds for users, skills, roles
# then make posts

User.destroy_all
Skill.destroy_all
Role.destroy_all
Post.destroy_all

10.times do
  user = User.new(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    username: Faker::Internet.username(specifier: 5..10),
    password: "123456"
  )

  user.save!
  puts "#{user.first_name} created"
end

skill = Skill.new(name: "Javascript")
skill.save!
puts "#{skill.name} created"

skill = Skill.new(name: "Ruby")
skill.save!
puts "#{skill.name} created"

skill = Skill.new(name: "CSS")
skill.save!
puts "#{skill.name} created"

skill = Skill.new(name: "React")
skill.save!
puts "#{skill.name} created"

role = Role.new(name: "Frontend")
role.save!
puts "#{role.name} created"

role = Role.new(name: "Backend")
role.save!
puts "#{role.name} created"

role = Role.new(name: "freelance")
role.save!
puts "#{role.name} created"

role = Role.new(name: "Full-stack")
role.save!
puts "#{role.name} created"

5.times do
  users = User.all
  tags = Role.all + Skill.all
  post = Post.new(
    title: Faker::Book.title,
    blurb: Faker::Quote.yoda,
    content: Faker::Movie.title,
    rating: rand(0...5),
    postable: tags.sample,
    user: users.sample
  )
  post.save!
  puts "#{post.title} created"
end
