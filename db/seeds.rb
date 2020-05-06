# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Recipe.delete_all

Recipe.create!(
  name: "Mac and Cheese",
  cook_time: "45 minutes",
  ingredients: "noodles, cheese, breadcrumbs",
  description: "A classic, all-american dish"
)

Recipe.create!(
  name: "Franks and Beans",
  cook_time: "50 minutes",
  ingredients: "beans, sausage, bbq sauce", 
  description: "A classic, all-american dish"
)
