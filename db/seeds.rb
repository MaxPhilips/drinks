# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

services = Service.create([{ name: 'Straight up' }, { name: 'On the rocks' }])

drinkwares = Drinkware.create([{ name: 'Cocktail glass' }, { name: 'Old fashioned glass' }])

drink_categories = DrinkCategory.create([{ name: 'Cocktail' }])

drinks = Drink.create([
  {
    name: 'Sidecar',
    description: 'The sidecar is any cocktail traditionally made with cognac, orange liqueur, plus lemon juice.',
    preparation: 'Pour all ingredients into cocktail shaker filled with ice. Shake well and strain into cocktail glass.',
    service: services.first,
    drinkware: drinkwares.first,
    drink_category: drink_categories.first
  },
  {
    name: 'Caipirinha',
    description: "Caipirinha is Brazil's national cocktail, made with cachaça (sugarcane hard liquor), sugar, and lime.",
    preparation: 'Place lime and sugar into a double old fashioned glass and muddle gently. Fill the glass with cracked ice and add Cachaça. Stir gently to involve ingredients.',
    service: services.second,
    drinkware: drinkwares.second,
    drink_category: drink_categories.first
  },
])

ingredient_categories = IngredientCategory.create([{ name: 'Spirit' }, { name: 'Liquer' }])
