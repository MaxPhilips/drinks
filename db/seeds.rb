# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

DrinkType.destroy_all
drink_types = DrinkType.create!([{ name: 'Cocktail' }])
puts "Created #{DrinkType.count} DrinkType records"

Service.destroy_all
services = Service.create!([{ name: 'Straight up' }, { name: 'On the rocks' }])
puts "Created #{Service.count} Service records"

Drinkware.destroy_all
drinkwares = Drinkware.create!([{ name: 'Cocktail glass' }, { name: 'Old fashioned glass' }])
puts "Created #{Drinkware.count} Drinkware records"

Drink.destroy_all
drinks = Drink.create!(
  [
    {
      name: 'Sidecar',
      drink_type: drink_types.first,
      description: 'The sidecar is any cocktail traditionally made with cognac, orange liqueur, plus lemon juice.',
      preparation: 'Pour all ingredients into cocktail shaker filled with ice. Shake well and strain into cocktail glass.',
      service: services.first,
      drinkware: drinkwares.first
    },
    {
      name: 'Caipirinha',
      drink_type: drink_types.first,
      description: "Caipirinha is Brazil's national cocktail, made with cachaça (sugarcane hard liquor), sugar, and lime.",
      preparation: 'Place lime and sugar into a double old fashioned glass and muddle gently. Fill the glass with cracked ice and add Cachaça. Stir gently to involve ingredients.',
      service: services.second,
      drinkware: drinkwares.second
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

Ingredient.destroy_all
ingredients = Ingredient.create!(
  [
    { name: 'Brandy' },
    { name: 'Triple sec' },
    { name: 'Lemon juice' },
    { name: 'Cachaça' },
    { name: 'Lime' },
    { name: 'Sugar' }
  ]
)
puts "Created #{Ingredient.count} Ingredient records"

Brand.destroy_all
Brands = Brand.create!(
  [
    {
      name: 'Courvoisier',
      description: 'Courvoisier is a brand of cognac, with production based in the town of Jarnac in the Charente region of France. It is the youngest and smallest of the "big four" cognac houses (the others are Hennessy, Rémy Martin, and Martell).',
      in_stock: true,
      ingredient_category: ingredient_categories.first,
      ingredient: ingredients.first
    },
    {
      name: 'Cointreau',
      description: "Cointreau is an orange-flavoured triple sec liqueur produced in Saint-Barthélemy-d'Anjou, France.",
      in_stock: true,
      ingredient_category: ingredient_categories.second,
      ingredient: ingredients.second
    },
    {
      name: 'Leblon',
      description: 'Leblon Cachaça is a premium artisanal brand of the spirit cachaça produced at the Destilaria Maison Leblon in Minas Gerais, Brazil.',
      in_stock: false,
      ingredient_category: ingredient_categories.first,
      ingredient: ingredients.fourth
    }
  ]
)
puts "Created #{Brand.count} Brand records"

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
