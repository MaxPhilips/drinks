# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Service.destroy_all
services = Service.create!([{ name: 'Straight up' }, { name: 'On the rocks' }])
puts "Created #{Service.count} Service records"

Drinkware.destroy_all
drinkwares = Drinkware.create!([{ name: 'Cocktail glass' }, { name: 'Old fashioned glass' }])
puts "Created #{Drinkware.count} Drinkware records"

DrinkCategory.destroy_all
drink_categories = DrinkCategory.create!([{ name: 'Cocktail' }])
puts "Created #{DrinkCategory.count} DrinkCategory records"

Drink.destroy_all
drinks = Drink.create!(
  [
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
    }
  ]
)
puts "Created #{Drink.count} Drink records"

IngredientCategory.destroy_all
ingredient_categories = IngredientCategory.create!(
  [
    { name: 'Spirit' },
    { name: 'Liquer' },
    { name: 'Juice' },
    { name: 'Fruit' },
    { name: 'Sweetener' }
  ]
)
puts "Created #{IngredientCategory.count} IngredientCategory records"

IngredientType.destroy_all
ingredient_types = IngredientType.create!(
  [
    { name: 'Brandy' },
    { name: 'Triple sec liquer' },
    { name: 'Lemon juice' },
    { name: 'Distilled beverage' },
    { name: 'Lime' },
    { name: 'Sugar' }
  ]
)
puts "Created #{IngredientType.count} IngredientType records"

Ingredient.destroy_all
ingredients = Ingredient.create!(
  [
    {
      name: 'Courvoisier', # Maybe this is supposed to be 'cognac'? It makes more sense for cachaca
      in_stock: true,
      ingredient_category: ingredient_categories.first,
      ingredient_type: ingredient_types.first
    },
    {
      name: 'Cointreau',
      in_stock: true,
      ingredient_category: ingredient_categories.second,
      ingredient_type: ingredient_types.second
    },
    {
      name: 'Lemon juice', # This duplicates the ingredient type...
      in_stock: true,
      ingredient_category: ingredient_categories.third,
      ingredient_type: ingredient_types.third
    },
    {
      name: 'Cachaça',
      in_stock: false,
      ingredient_category: ingredient_categories.first,
      ingredient_type: ingredient_types.fourth
    },
    {
      name: 'Lime', # This duplicates the ingredient type...
      in_stock: true,
      ingredient_category: ingredient_categories.fourth,
      ingredient_type: ingredient_types.fourth
    },
    {
      name: 'Sugar', # This duplicates the ingredient type...
      in_stock: false,
      ingredient_category: ingredient_categories.fifth,
      ingredient_type: ingredient_types[5]
    }
  ]
)
puts "Created #{Ingredient.count} Ingredient records"

Quantity.destroy_all
quantities = Quantity.create!([{ amount: 5 }, { amount: 2 }, { amount: 6 }, { amount: 1 }, { amount: 4 }])
puts "Created #{Quantity.count} Quantity records"

Unit.destroy_all
units = Unit.create!(
  [
    { name: 'Centiliter', abbreviation: 'cl' },
    { name: 'Ounce', abbreviation: 'oz' },
    { name: 'Whole' },
    { name: 'Teaspoon', abbreviation: 'tsp.' }
  ]
)
puts "Created #{Unit.count} Unit records"

DrinkIngredient.destroy_all
drink_ingredients = DrinkIngredient.create!(
  [
    # Sidecar: 5 cl cognac, 2 cl triple sec, 2 cl lemon juice
    {
      drink: drinks.first,
      ingredient: ingredients.first,
      quantity: quantities.first,
      unit: units.first
    },
    {
      drink: drinks.first,
      ingredient: ingredients.second,
      quantity: quantities.second,
      unit: units.first
    },
    {
      drink: drinks.first,
      ingredient: ingredients.third,
      quantity: quantities.second,
      unit: units.first
    },
    # Caipirinha: 60 ml cachaça, 1 lime cut into small wedges, 4 teaspoons white cane sugar
    {
      drink: drinks.second,
      ingredient: ingredients.fourth,
      quantity: quantities.third,
      unit: units.first
    },
    {
      drink: drinks.second,
      ingredient: ingredients.fifth,
      quantity: quantities.fourth,
      unit: units.third
    },
    {
      drink: drinks.second,
      ingredient: ingredients[5],
      quantity: quantities.fifth,
      unit: units.fourth
    }
  ]
)
puts "Created #{DrinkIngredient.count} DrinkIngredient records"
