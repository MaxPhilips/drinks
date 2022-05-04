# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

DrinkType.destroy_all
cocktail = DrinkType.create!({ name: 'Cocktail' })
puts "Created #{DrinkType.count} DrinkType records"

Service.destroy_all
straight_up = Service.create!({ name: 'Straight up' })
on_the_rocks = Service.create!({ name: 'On the rocks' })
puts "Created #{Service.count} Service records"

Drinkware.destroy_all
cocktail_glass = Drinkware.create!({ name: 'Cocktail glass' })
old_fashioned_glass = Drinkware.create!({ name: 'Old fashioned glass' })
highball_glass = Drinkware.create!({ name: 'Highball glass' })
puts "Created #{Drinkware.count} Drinkware records"

Drink.destroy_all
sidecar = Drink.create!(
  {
    name: 'Sidecar',
    drink_type: cocktail,
    description: 'The Sidecar is any cocktail traditionally made with cognac, orange liqueur, plus lemon juice.',
    preparation: 'Pour all ingredients into cocktail shaker filled with ice. Shake well and strain into cocktail glass.',
    service: straight_up,
    drinkware: cocktail_glass
  }
)
caipirinha = Drink.create!(
  {
    name: 'Caipirinha',
    drink_type: cocktail,
    description: "The Caipirinha is Brazil's national cocktail, made with cachaça (sugarcane hard liquor), sugar, and lime.",
    preparation: 'Cut lime into small wedges and place lime and sugar into a double old fashioned glass and muddle gently. Fill the glass with cracked ice and add Cachaça. Stir gently to involve ingredients.',
    service: on_the_rocks,
    drinkware: old_fashioned_glass
  }
)
alexander = Drink.create!(
  {
    name: 'Alexander',
    drink_type: cocktail,
    description: 'The Alexander (or Brandy Alexander) is a cocktail consisting of cognac, cocoa liqueur (crème de cacao), and cream.',
    preparation: 'Shake all ingredients with ice and strain contents into a cocktail glass. Sprinkle nutmeg on top and serve.',
    service: straight_up,
    drinkware: cocktail_glass
  }
)
between_the_sheets = Drink.create!(
  {
    name: 'Between the Sheets',
    drink_type: cocktail,
    description: "The Between the Sheets is a cocktail consisting of white rum, cognac, triple sec, and lemon juice. When made with gin, instead of rum and cognac, it's called a \"Maiden's Prayer\"",
    preparation: 'Pour all ingredients into shaker with ice cubes, shake, strain into chilled cocktail glass.',
    service: straight_up,
    drinkware: old_fashioned_glass
  }
)
last_word = Drink.create!(
  {
    name: 'Last Word',
    drink_type: cocktail,
    description: 'The Last Word is a gin-based Prohibition-era cocktail originally developed at the Detroit Athletic Club. While the drink eventually fell out of favor, it enjoyed a renewed popularity after being rediscovered by the bartender Murray Stenson in 2004 during his tenure at the Zig Zag Café and becoming a cult hit in the Seattle area.',
    preparation: 'Shake with ice and strain into a cocktail glass.',
    service: straight_up,
    drinkware: cocktail_glass
  }
)
cuba_libre = Drink.create!(
  {
    name: 'Cuba Libre',
    drink_type: cocktail,
    description: 'Rum and Coke, or the Cuba Libre, is a highball cocktail consisting of cola, rum, and in many recipes lime juice on ice.',
    preparation: 'Build all ingredients in a highball glass filled with ice. Garnish with lime wedge.',
    service: on_the_rocks,
    drinkware: highball_glass
  }
)
grasshopper = Drink.create!(
  {
    name: 'Grasshopper',
    drink_type: cocktail,
    description: 'A Grasshopper is a sweet, mint-flavored, after-dinner drink. The name of the drink derives from its green color, which comes from crème de menthe.',
    preparation: 'Pour ingredients into a cocktail shaker with ice. Shake briskly and then strain into a chilled cocktail glass.',
    service: straight_up,
    drinkware: cocktail_glass
  }
)
bees_knees = Drink.create!(
  {
    name: "Bee's Knees",
    drink_type: cocktail,
    description: "A Bee's Knees is a Prohibition Era cocktail made with gin, fresh lemon juice, and honey. It is served shaken and chilled, often with a lemon twist.",
    preparation: 'Stir honey syrup with lemon and orange juices until it dissolves, add gin and shake with ice. Strain into a chilled cocktail glass.',
    service: straight_up,
    drinkware: cocktail_glass
  }
)
yellow_bird = Drink.create!(
  {
    name: 'Yellow Bird',
    drink_type: cocktail,
    description: 'The Yellow Bird is a Caribbean cocktail beverage.',
    preparation: 'Pour all ingredients into a cocktail shaker, shake well with ice, strain into chilled cocktail glass.',
    service: straight_up,
    drinkware: cocktail_glass
  }
)
sex_on_the_beach = Drink.create!(
  {
    name: 'Sex on the Beach',
    drink_type: cocktail,
    description: 'A Sex on the Beach is an alcoholic cocktail containing vodka, peach schnapps, orange juice and cranberry juice.',
    preparation: 'Build all ingredients in a highball glass filled with ice. Garnish with orange slice.',
    service: on_the_rocks,
    drinkware: highball_glass
  }
)
puts "Created #{Drink.count} Drink records"

IngredientType.destroy_all
spirit = IngredientType.create!({ name: 'Spirit' })
liquer = IngredientType.create!({ name: 'Liquer' })
juice = IngredientType.create!({ name: 'Juice' })
fruit = IngredientType.create!({ name: 'Fruit' })
sweetener = IngredientType.create!({ name: 'Sweetener' })
soda = IngredientType.create!({ name: 'Soda' })
puts "Created #{IngredientType.count} IngredientType records"

Ingredient.destroy_all
cognac           = Ingredient.create!({ name: 'Cognac',            ingredient_type: spirit,    in_stock: false })
triple_sec       = Ingredient.create!({ name: 'Triple sec',        ingredient_type: liquer,    in_stock: true  })
lemon_juice      = Ingredient.create!({ name: 'Lemon juice',       ingredient_type: juice,     in_stock: false })
cachaca          = Ingredient.create!({ name: 'Cachaça',           ingredient_type: spirit,    in_stock: false })
lime             = Ingredient.create!({ name: 'Lime',              ingredient_type: fruit,     in_stock: true  })
sugar            = Ingredient.create!({ name: 'Sugar',             ingredient_type: sweetener, in_stock: true  })
creme_de_cacao   = Ingredient.create!({ name: 'Crème de cacao',    ingredient_type: liquer,    in_stock: false })
cream            = Ingredient.create!({ name: 'Cream',             ingredient_type: sweetener, in_stock: false })
white_rum        = Ingredient.create!({ name: 'White rum',         ingredient_type: spirit,    in_stock: false })
gin              = Ingredient.create!({ name: 'Gin',               ingredient_type: spirit,    in_stock: true  })
lime_juice       = Ingredient.create!({ name: 'Lime juice',        ingredient_type: juice,     in_stock: true  })
green_chartreuse = Ingredient.create!({ name: 'Green Chartreuse',  ingredient_type: liquer,    in_stock: false })
maraschino       = Ingredient.create!({ name: 'Maraschino liquer', ingredient_type: liquer,    in_stock: true  })
cola             = Ingredient.create!({ name: 'Cola',              ingredient_type: soda,      in_stock: true  })
creme_de_menthe  = Ingredient.create!({ name: 'Crème de menthe',   ingredient_type: liquer,    in_stock: true  })
orange_juice     = Ingredient.create!({ name: 'Orange juice',      ingredient_type: juice,     in_stock: false })
honey_syrup      = Ingredient.create!({ name: 'Honey syrup',       ingredient_type: sweetener, in_stock: true  })
galliano         = Ingredient.create!({ name: 'Galliano',          ingredient_type: liquer,    in_stock: false })
vodka            = Ingredient.create!({ name: 'Vodka',             ingredient_type: spirit,    in_stock: true  })
peach_schnapps   = Ingredient.create!({ name: 'Peach schnapps',    ingredient_type: liquer,    in_stock: true  })
cranberry_juice  = Ingredient.create!({ name: 'Cranberry juice',   ingredient_type: juice,     in_stock: false })
puts "Created #{Ingredient.count} Ingredient records"

# Brand.destroy_all
# courvoisier = Brand.create!(
#   {
#     name: 'Courvoisier',
#     description: 'Courvoisier is a brand of cognac, with production based in the town of Jarnac in the Charente region of France. It is the youngest and smallest of the "big four" cognac houses (the others are Hennessy, Rémy Martin, and Martell).',
#     in_stock: true,
#     ingredient: cognac
#   }
# )
# cointreau = Brand.create!(
#   {
#     name: 'Cointreau',
#     description: "Cointreau is an orange-flavoured triple sec liqueur produced in Saint-Barthélemy-d'Anjou, France.",
#     in_stock: true,
#     ingredient: triple_sec
#   }
# )
# leblon = Brand.create!(
#   {
#     name: 'Leblon',
#     description: 'Leblon Cachaça is a premium artisanal brand of the spirit cachaça produced at the Destilaria Maison Leblon in Minas Gerais, Brazil.',
#     in_stock: false,
#     ingredient: cachaca
#   }
# )
# puts "Created #{Brand.count} Brand records"

Quantity.destroy_all
quantities = Quantity.create!(
  [
    { amount: 1 },
    { amount: 2 },
    { amount: 3 },
    { amount: 4 },
    { amount: 5 },
    { amount: 6 },
    { amount: 7 },
    { amount: 8 },
    { amount: 9 },
    { amount: 10 },
    { amount: 11 },
    { amount: 12 },
    { amount: 13 },
    { amount: 14 },
    { amount: 15 },
    { amount: 22.5 },
    { amount: 52.5 }
  ]
)
puts "Created #{Quantity.count} Quantity records"

Unit.destroy_all
cl = Unit.create!({ name: 'Centiliter', abbreviation: 'cl' })
ml = Unit.create!({ name: 'Milliliter', abbreviation: 'ml' })
oz = Unit.create!({ name: 'Ounce', abbreviation: 'oz' })
whole = Unit.create!({ name: 'Whole' })
tsp = Unit.create!({ name: 'Teaspoon', abbreviation: 'tsp.' })
puts "Created #{Unit.count} Unit records"

DrinkIngredient.destroy_all
drink_ingredients = DrinkIngredient.create!(
  [
    # Sidecar: 5 cl cognac, 2 cl triple sec, 2 cl lemon juice
    {
      drink: sidecar,
      ingredient: cognac,
      quantity: quantities[4],
      unit: cl
    },
    {
      drink: sidecar,
      ingredient: triple_sec,
      quantity: quantities[1],
      unit: cl
    },
    {
      drink: sidecar,
      ingredient: lemon_juice,
      quantity: quantities[1],
      unit: cl
    },
    # Caipirinha: 60 ml cachaça, 1 lime cut into small wedges, 4 teaspoons white cane sugar
    {
      drink: caipirinha,
      ingredient: cachaca,
      quantity: quantities[5],
      unit: cl
    },
    {
      drink: caipirinha,
      ingredient: lime,
      quantity: quantities[0],
      unit: whole
    },
    {
      drink: caipirinha,
      ingredient: sugar,
      quantity: quantities[3],
      unit: tsp
    },
    # Alexander: 3 cl cognac, 3 cl brown crème de cacao, 3 cl light cream
    {
      drink: alexander,
      ingredient: cognac,
      quantity: quantities[2],
      unit: cl
    },
    {
      drink: alexander,
      ingredient: creme_de_cacao,
      quantity: quantities[2],
      unit: cl
    },
    {
      drink: alexander,
      ingredient: cream,
      quantity: quantities[2],
      unit: cl
    },
    # Between the Sheets: 3 cl white rum, 3 cl cognac, 3 cl triple sec, 2 cl fresh lemon juice
    {
      drink: between_the_sheets,
      ingredient: white_rum,
      quantity: quantities[2],
      unit: cl
    },
    {
      drink: between_the_sheets,
      ingredient: cognac,
      quantity: quantities[2],
      unit: cl
    },
    {
      drink: between_the_sheets,
      ingredient: triple_sec,
      quantity: quantities[2],
      unit: cl
    },
    {
      drink: between_the_sheets,
      ingredient: lemon_juice,
      quantity: quantities[1],
      unit: cl
    },
    # Last Word: 22.5 ml gin, 22.5 ml lime juice, 22.5 ml green Chartreuse, 22.5 ml maraschino liqueur
    {
      drink: last_word,
      ingredient: gin,
      quantity: quantities[15],
      unit: ml
    },
    {
      drink: last_word,
      ingredient: lime_juice,
      quantity: quantities[15],
      unit: ml
    },
    {
      drink: last_word,
      ingredient: green_chartreuse,
      quantity: quantities[15],
      unit: ml
    },
    {
      drink: last_word,
      ingredient: maraschino,
      quantity: quantities[15],
      unit: ml
    },
    # Cuba Libre: 120 ml cola, 50 ml white rum, 10 ml Fresh lime juice
    {
      drink: cuba_libre,
      ingredient: cola,
      quantity: quantities[11],
      unit: cl
    },
    {
      drink: cuba_libre,
      ingredient: white_rum,
      quantity: quantities[4],
      unit: cl
    },
    {
      drink: cuba_libre,
      ingredient: lime_juice,
      quantity: quantities[0],
      unit: cl
    },
    # Grasshopper: 3 cl crème de menthe (green), 3 cl crème de cacao (white), 3 cl cream
    {
      drink: grasshopper,
      ingredient: creme_de_menthe,
      quantity: quantities[2],
      unit: cl
    },
    {
      drink: grasshopper,
      ingredient: creme_de_cacao,
      quantity: quantities[2],
      unit: cl
    },
    {
      drink: grasshopper,
      ingredient: cream,
      quantity: quantities[2],
      unit: cl
    },
    # Bee's Knees: 52.5 ml dry gin, 22.5 ml lemon juice, 22.5 ml orange juice, 2 teaspoons honey syrup
    {
      drink: bees_knees,
      ingredient: gin,
      quantity: quantities[16],
      unit: ml
    },
    {
      drink: bees_knees,
      ingredient: lemon_juice,
      quantity: quantities[15],
      unit: ml
    },
    {
      drink: bees_knees,
      ingredient: orange_juice,
      quantity: quantities[15],
      unit: ml
    },
    {
      drink: bees_knees,
      ingredient: honey_syrup,
      quantity: quantities[1],
      unit: tsp
    },
    # Yellow Bird: 3 cl white rum, 1.5 cl Galliano, 1.5 cl triple sec, 1.5 cl lime juice
    {
      drink: yellow_bird,
      ingredient: white_rum,
      quantity: quantities[2],
      unit: cl
    },
    {
      drink: yellow_bird,
      ingredient: galliano,
      quantity: quantities[14],
      unit: ml
    },
    {
      drink: yellow_bird,
      ingredient: triple_sec,
      quantity: quantities[14],
      unit: ml
    },
    {
      drink: yellow_bird,
      ingredient: lime_juice,
      quantity: quantities[14],
      unit: ml
    },
    # Sex on the Beach: 4 cl Vodka, 2 cl Peach schnapps, 4 cl Orange juice, 4 cl cranberry juice
    {
      drink: sex_on_the_beach,
      ingredient: vodka,
      quantity: quantities[3],
      unit: cl
    },
    {
      drink: sex_on_the_beach,
      ingredient: peach_schnapps,
      quantity: quantities[1],
      unit: cl
    },
    {
      drink: sex_on_the_beach,
      ingredient: orange_juice,
      quantity: quantities[3],
      unit: cl
    },
    {
      drink: sex_on_the_beach,
      ingredient: cranberry_juice,
      quantity: quantities[3],
      unit: cl
    }
  ]
)
puts "Created #{DrinkIngredient.count} DrinkIngredient records"
