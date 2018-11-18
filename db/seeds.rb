# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def create_user(user)
  password = 'testtest'

  User.create(
    email:    user[:email],
    role:     user[:role],
    password: password,
    password_confirmation: password
  )
end

# @users.each do |user|
#   u = create_user(user)
#   puts "User with email #{u.email} created"
# end
