# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  User.create fullname: 'Henrique Figueiredo Hefler', username: 'Henrique'

100.times do
  username = Faker::FunnyName.unique.name
  name = Faker::Name.unique.name
  quote = Faker::Quote.matz
  User.create(fullname: name, username: username, biography: quote)
end

1000.times do
  follower = User.find(rand(1..User.count))
  followee = User.find(rand(1..User.count))
  while follower == followee
    follower = User.find(rand(1..User.count))
    followee = User.find(rand(1..User.count))
  end
  Follow.create follower_id: follower.id, followee_id: followee.id
end

200.times do
  text = Faker::ChuckNorris.fact
  title = Faker::App.name
  commenter_id = rand(1..User.count)
  Opinion.create(text:text,title:title, author_id:commenter_id)
end
