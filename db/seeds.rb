# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Seeding!'

Note.destroy_all
User.destroy_all

User.create(username: "Brian", id: 1)

10.times do Note.create(
    user_id: User.first.id,
    title: Faker::ChuckNorris.fact,
    body: Faker::Movies::VForVendetta.quote
) 
end

puts 'seeding complete!'