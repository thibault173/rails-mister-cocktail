# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require_relative 'data_for_seed'

# My db:seed
puts "Cleaning database..."

Cocktail.destroy_all
Dose.destroy_all
Ingredient.destroy_all

puts "Now #{Cocktail.all.size} cocktails and #{Ingredient.all.size} ingredients and #{Dose.all.size} doses in database !"

puts "Adding all ingredients from data_for_seed..."

INGREDIENTS.each{ |ingredient| Ingredient.create(name: ingredient)}

puts "Adding random cocktails..."

20.times do
  cocktail = Cocktail.new()
  until cocktail.save
    cocktail = Cocktail.new(name: COCKTAILS.sample)
  end

  4.times do
    dose = Dose.new
    until dose.save
      ingredient = Ingredient.all.sample
      dose = Dose.new(description: DESCRIPTION.sample,
              cocktail: cocktail,
            ingredient: Ingredient.all.sample
          )
    end
  end
end
puts "Now #{Cocktail.all.size} cocktails and #{Ingredient.all.size} ingredients and #{Dose.all.size} doses in database !"
