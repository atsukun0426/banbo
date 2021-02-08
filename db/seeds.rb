5.times do |n|
  username = Faker::Name.name
  email = Faker::Internet.email
  password = "password"
  password_confirmation = "password"

  User.create(
    username: username,
    email: email,
    password: password,
    password_confirmation: password_confirmation
  )
end

5.times do |n|
  username = Faker::Name.name
  email = Faker::Internet.email
  password = "password"
  password_confirmation = "password"

  Organizer.create(
    username: username,
    email: email,
    password: password,
    password_confirmation: password_confirmation
  )
end
