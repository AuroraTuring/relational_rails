# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
new_england = Competition.create!(name: "New England Show", location: "Ohio", date: "04/01/2024", open_to_the_public: true, prize_money: 250)
south_east = Competition.create!(name: "South East Show", location: "Florida", date: "01/01/2024", open_to_the_public: true, prize_money: 250)

crystal = Gerbil.create!(competition_id: new_england.id, name: "Crystal", color: "Mottled Lilac", age: 2.5, neutered: false)
jasper = Gerbil.create!(competition_id: new_england.id, name: "Jasper", color: "Polar Fox", age: 3, neutered: false)
onyx = Gerbil.create!(competition_id: south_east.id, name: "Onyx", color: "Black", age: 1, neutered: true)
