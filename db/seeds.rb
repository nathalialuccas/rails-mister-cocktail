# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Cocktail.destroy_all
Ingredient.destroy_all
Dose.destroy_all

p "seeding cocktails"
5.times do
  cocktails = Cocktail.create!(name: Faker::Beer.name)
  puts "#{cocktails.name} created"
end
p "cocktails have been created"

p "seeding ingredients"
5.times do
  ingredients = Ingredient.create!(name: Faker::Food.spice)
  puts "#{ingredients.name} created"
end
p "ingredients have been created"

# p "seeding doses"
# i = 1
# 5.times do
#   Dose.create!(description: Faker::Pokemon.name, ingredient_id: i, cocktail_id: i)
#   i += 1
# end
# p "doses have been created"


