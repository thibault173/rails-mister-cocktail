# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleanind database..."

Cocktail.destroy_all

puts "Adding cocktails..."

10.times do

  cocktail = Cocktail.new(name: Faker::Beer.hop)
  cocktail.save

end

puts "Adding ingredients..."

20.times do

  ingredient = Ingredient.new(name: Faker::Food.ingredient)
  ingredient.save!

end


puts "Now #{Cocktail.all.size} cocktails and #{Ingredient.all.size} ingredients in database !"
