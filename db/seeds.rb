# Put data creation code here
# Initiate the data by running 'rake db:seed'
# in the command line after running migrations (rake db:migrate)

# e.g.
# User.create(f_name: 'Bobby', l_name: 'McBobberson')
User.destroy_all

require 'faker'

user = User.create(username: 'nwitte', f_name: 'Nikki', l_name: 'Witte', email: 'nwitte@gmail.com')
user = User.create(username: 'sean', f_name: 'Sean', l_name: "Smyth", email: 'ssmyth1071@gmail.com')
user = User.create(username: 'natalie', f_name: 'Natalie', l_name: 'Russo', email: 'martin.nat@gmail.com')

10.times do
  User.create(
    username: Faker::Food.unique.dish,
    f_name: Faker::Name.first_name,
    l_name: Faker::Name.last_name,
    email: Faker::Internet.email
  )
end


3.times do
  Post.create(
    content: Faker::Friends.quote,
    user_id: rand(1..13)
  )
end

3.times do
  Post.create(
    content: Faker::Simpsons.quote,
    user_id: rand(1..13)
  )
end

3.times do
  Post.create(
    content: Faker::HarryPotter.quote,
    user_id: rand(1..13)
  )
end

3.times do
  Post.create(
    content: Faker::ChuckNorris.fact,
    user_id: rand(1..13)
  )
end

3.times do
  Post.create(
    content: Faker::HowIMetYourMother.quote,
    user_id: rand(1..13)
  )
end

3.times do
  Post.create(
    content: Faker::MostInterestingManInTheWorld.quote,
    user_id: rand(1..13)
  )
end

3.times do
  Post.create(
    content: Faker::Movie.quote,
    user_id: rand(1..13)
  )
end

3.times do
  Post.create(
    content: Faker::TheFreshPrinceOfBelAir.quote,
    user_id: rand(1..13)
  )
end

3.times do
  Post.create(
    content: Faker::RickAndMorty.quote,
    user_id: rand(1..13)
  )
end
