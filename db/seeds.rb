# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Review.delete_all
User.delete_all
Business.delete_all

25.times do
  Business.create!({name: Faker::Company.name, address: Faker::Address.street_address, city: Faker::Address.city, state: Faker::Address.state, description: Faker::Commerce.department(5), status: ''})
end

10.times do
 User.create!({:email => Faker::Internet.email, :password => 'password', :password_confirmation => 'password', :given_name => Faker::Name.first_name, :family_name => Faker::Name.last_name, :city => Faker::Address.city, :state => Faker::Address.state})
end
@business = Business.all
@business.each do |b|
  u = User.all.shuffle
  rand(4...7).times do
    uniq = u.pop
    b.reviews.create!({rating: rand(1..5), user_id: uniq.id, title: Faker::Lorem.sentence, description: Faker::Hacker.say_something_smart})
    Like.create!({likeable_id: b.id, liker_id: uniq.id})
  end
end
