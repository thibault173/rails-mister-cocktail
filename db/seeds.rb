# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."

Cocktail.destroy_all
Dose.destroy_all
Ingredient.destroy_all

puts "Now #{Cocktail.all.size} cocktails and #{Ingredient.all.size} ingredients and #{Dose.all.size} doses in database !"

puts "Adding cocktails..."

10.times do
  cocktail = Cocktail.new(name: Faker::Beer.hop)
  cocktail.save

  4.times do
    ingredient = Ingredient.new(name: Faker::Food.ingredient)
    ingredient.save

    dose = Dose.new(description: Faker::Food.description,
          cocktail: cocktail,
        ingredient: ingredient
      )
    dose.save!
  end
end


puts "Now #{Cocktail.all.size} cocktails and #{Ingredient.all.size} ingredients and #{Dose.all.size} doses in database !"
