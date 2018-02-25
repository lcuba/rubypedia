# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

10.times do
    User.create!(
        email: Faker::Internet.email,
        password: Faker::Internet.password
    )
end
users = User.all

=begin 25.times do
   Wiki.create!(
        user: users.sample,
        title: Faker::Lorem.sentence,
        body: Faker::Lorem.paragraph + "<br /><br />" + Faker::Lorem.paragraph + "<br /><br />" + Faker::Lorem.paragraph + "<br /><br />" + Faker::Lorem.paragraph + "<br /><br />" + Faker::Lorem.paragraph + "<br /><br />" + Faker::Lorem.paragraph + "<br /><br />" + Faker::Lorem.paragraph + "<br /><br />" + Faker::Lorem.paragraph + "<br /><br />" + Faker::Lorem.paragraph + "<br /><br />" + Faker::Lorem.paragraph,
        private: false
    ) 
end
=end
5.times do
    Wiki.create!(
        user: users.sample,
        title: Faker::Lorem.sentence + " - Private",
        body: Faker::Lorem.paragraph + "<br /><br />" + Faker::Lorem.paragraph + "<br /><br />" + Faker::Lorem.paragraph + "<br /><br />" + Faker::Lorem.paragraph + "<br /><br />" + Faker::Lorem.paragraph + "<br /><br />" + Faker::Lorem.paragraph + "<br /><br />" + Faker::Lorem.paragraph + "<br /><br />" + Faker::Lorem.paragraph + "<br /><br />" + Faker::Lorem.paragraph + "<br /><br />" + Faker::Lorem.paragraph,
        private: true
    ) 
    end


puts "Seed finished"
puts "#{User.count} users created"
puts "#{Wiki.count} wikis created"

