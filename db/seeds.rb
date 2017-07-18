require 'faker'

5.times do
  User.create!(
    email:    Faker::Internet.email ,
    password: 'password'
  )
end
users = User.all


50.times do
  item = Item.create!(
    user:   users.sample,
    name: Faker::Friends.location
  )
end

items = Item.all

# Create an admin user
admin = User.create!(
  email:    'admin@example.com',
  password: 'helloworld',
)

# Create a member
member = User.create!(
  email:    'member@example.com',
  password: 'helloworld'
)

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Item.count} topics created"
