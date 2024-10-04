# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Clear out existing data to avoid duplicates if necessary
Item.destroy_all

# Stuff that actually has purpose in the game
items = [
  ['Hammer', 'A particularly ordinary hammer.', 5],
  ['Pickaxe', 'Apparently, not made of diamond.', 6],
  ['Iron Ore', "It's hard to find a game with this in it.", 1],
  ['Iron Ingot', 'What kind of game is this, anyway?', 2]
]

items.each do |name, description, value|
  Item.create!(name: name, description: description, value: value, useful: true)
end

puts "Seeded #{Item.count} items!"
