# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  User.create fullname: 'Henrique Figueiredo Hefler', username: 'Henrique'

100.times do
  username = Faker::FunnyName.name
  name = Faker::Name.name
  quote = Faker::Quote.matz
  User.create fullname: name, username: username, biography: quote
end

200.times do
  text = Faker::ChuckNorris.fact
  title = Faker::App.name
  commenter_id = rand(1..90)
  Opinion.create(text:text,title:title, author_id:commenter_id)
end
