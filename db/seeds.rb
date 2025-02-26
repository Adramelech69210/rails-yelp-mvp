# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning database..."
Restaurant.destroy_all

# 2. Create the instances 🏗️
puts "Creating restaurants..."
restaurant = Restaurant.create!(name: "Au Camembert", address: "Paris", phone_number: "0623162317", category:"french")
puts "Created #{restaurant.name}"
restaurant = Restaurant.create!(name: "Spaghetti", address: "lyon 1er", phone_number: "0623162318", category:"italian")
puts "Created #{restaurant.name}"
restaurant = Restaurant.create!(name: "Sushi K", address: "Tassin", phone_number: "0623162319", category:"japanese")
puts "Created #{restaurant.name}"
restaurant = Restaurant.create!(name: "La Frite", address: "Marseille", phone_number: "0623162320", category:"belgian")
puts "Created #{restaurant.name}"
restaurant = Restaurant.create!(name: "Le Nems", address: "Bordeaux", phone_number: "0623162321", category:"chinese")
puts "Created #{restaurant.name}"

review = Review.create!(content: "« Le Nem », un nom qui promet monts et merveilles
                                  (de nems, bien sûr !). J'y suis allé avec l'estomac criant famine et l'espoir de
                                  trouver un festin de rouleaux croustillants. Eh bien... disons que l'aventure a été
                                  au rendez-vous !", rating: 5, restaurant: restaurant)

# 3. Display a message 🎉
puts "Finished! Created #{Restaurant.count} restaurants."

# t.string "name"
# t.string "address"
# t.text "phone_number"
# t.string "category"
