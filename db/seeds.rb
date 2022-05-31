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

10.times do
  user = User.new(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    username: Faker::Internet.username(specifier: 5..10),
    password: "123456"
  )

  user.save!
end

skill = Skill.new(name: "Javascript")
skill.save!

skill = Skill.new(name: "Ruby")
skill.save!

skill = Skill.new(name: "CSS")
skill.save!

skill = Skill.new(name: "React")
skill.save!

role = Role.new(name: "Frontend")
role.save!

role = Role.new(name: "Backend")
role.save!

role = Role.new(name: "freelance")
role.save!

role = Role.new(name: "Full-stack")
role.save!

post = Post.new(
  title: title,
  blurb: blurb,
  content: content,
  rating: rating)
post.save!
