# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:

#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurant..."
le_ciel = { name: 'Le Ciel', address: '21 rue Haxo', category: 'italian' }
mc_donalds = { name: "McDonald's", address: '666 rue du gras', category: 'belgian' }
chez_mamie = { name: 'Chez Mamie', address: '32 avenue du goût', category: 'french' }
chihiro = { name: 'Chihiro', address: '17 rue de Tokyo', category: 'japanese' }
panda_man = { name: 'Panda Man', address: '444 rue de shanghai', category: 'chinese' }

[le_ciel, mc_donalds, chez_mamie, chihiro, panda_man].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
