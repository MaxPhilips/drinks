# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

DrinkType.destroy_all
cocktail = DrinkType.create!({ name: 'Cocktail' })
mixed_drink = DrinkType.create!({ name: 'Mixed Drink' })
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






# The Unforgettables
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
americano = Drink.create!(
  {
    name: 'Americano',
    drink_type: mixed_drink,
    description: "The Americano is composed of Campari, sweet vermouth, and for the sparkling version, club soda and garnished with a slice of lemon. The cocktail was first served in creator Gaspare Campari's bar, Caffè Campari, in the 1860s.",
    preparation: 'Pour the Campari and vermouth over ice into an old fashioned glass, add a splash of soda water and garnish with half orange slice and a lemon twist.',
    service: on_the_rocks,
    drinkware: old_fashioned_glass
  }
)
angel_face = Drink.create!(
  {
    name: 'Angel Face',
    drink_type: cocktail,
    description: 'The Angel Face is a cocktail made from gin, apricot brandy and Calvados in equal amounts. The cocktail first appears in the Savoy Cocktail Book compiled by Harry Craddock in 1930.',
    preparation: 'Pour all ingredients into cocktail shaker filled with ice cubes. Shake and strain into a chilled cocktail glass.',
    service: straight_up,
    drinkware: cocktail_glass
  }
)
aviation = Drink.create!(
  {
    name: 'Aviation',
    drink_type: cocktail,
    description: 'The Aviation is a classic cocktail made with gin, maraschino liqueur, crème de violette, and lemon juice. Some recipes omit the crème de violette.',
    preparation: 'Add all ingredients into cocktail shaker filled with ice. Shake well and strain into cocktail glass. Garnish with a cherry.',
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
    drinkware: cocktail_glass
  }
)
boulevardier = Drink.create!(
  {
    name: 'Boulevardier',
    drink_type: cocktail,
    description: 'The boulevardier cocktail is an alcoholic drink composed of whiskey, sweet vermouth, and Campari. Its creation is ascribed to Erskine Gwynne, an American-born writer who founded a monthly magazine in Paris called Boulevardier, which appeared from 1927 to 1932.',
    preparation: 'Pour all ingredients into mixing glass with ice cubes. Stir well. Strain into a chilled cocktail glass.',
    service: straight_up,
    drinkware: cocktail_glass
  }
)
brandy_crusta = Drink.create!(
  {
    name: 'Brandy Crusta',
    drink_type: cocktail,
    description: 'A Brandy Crusta is an IBA Official Cocktail made of brandy, Maraschino Luxardo, curaçao, fresh lemon juice, sugar syrup, and Angostura bitters. The cocktail, named for the crust of sugar on the rim, was invented by Joseph Santini, a bartender in New Orleans at his bar, Jewel of the South.',
    preparation: 'Mix all ingredients with ice cubes in a mixing glass. Strain into slim cocktail glass rimmed with sugar.',
    service: straight_up,
    drinkware: cocktail_glass
  }
)
casino = Drink.create!(
  {
    name: 'Casino',
    drink_type: cocktail,
    description: 'The Casino is an IBA official cocktail made with gin, maraschino liqueur, orange bitters and fresh lemon juice. This version of the Casino Cocktail first appears in 1909, in The Reminder (3rd edition) by Jacob A. Didier.',
    preparation: 'Pour all ingredients into shaker with ice cubes. Shake well. Strain into chilled cocktail glass. Garnish with a lemon twist and a maraschino cherry. Serve without a straw.',
    service: straight_up,
    drinkware: cocktail_glass
  }
)
clover_club = Drink.create!(
  {
    name: 'Clover Club',
    drink_type: cocktail,
    description: 'The Clover Club Cocktail is a cocktail consisting of gin, lemon juice, raspberry syrup, and an egg white. The egg white is not added for the purpose of giving the drink flavor, but rather acts as an emulsifier. Thus when the drink is shaken a characteristic foamy head is formed.',
    preparation: 'Dry shake ingredients to emulsify, add ice, shake and served straight up.',
    service: straight_up,
    drinkware: cocktail_glass
  }
)
daiquiri = Drink.create!(
  {
    name: 'Daiquiri',
    drink_type: cocktail,
    description: "Daiquiri is a family of cocktails whose main ingredients are rum, citrus juice (typically lime juice), and sugar or other sweetener. The daiquiri is one of the six basic drinks listed in David A. Embury's classic The Fine Art of Mixing Drinks, which also lists some variations.",
    preparation: 'In a cocktail shaker add all ingredients. Stir well to dissolve the sugar. Add ice and shake. Strain into chilled cocktail glass.',
    service: straight_up,
    drinkware: cocktail_glass
  }
)

# Contemporary Classics

# New Era Drinks

puts "Created #{Drink.count} Drink records"

IngredientType.destroy_all
spirit = IngredientType.create!({ name: 'Spirit' })
wine = IngredientType.create!({ name: 'Wine' })
liquer = IngredientType.create!({ name: 'Liquer' })
juice = IngredientType.create!({ name: 'Juice' })
fruit = IngredientType.create!({ name: 'Fruit' })
sweetener = IngredientType.create!({ name: 'Sweetener' })
soda = IngredientType.create!({ name: 'Soda' })
emulsifier = IngredientType.create!({ name: 'Emulsifier' })
puts "Created #{IngredientType.count} IngredientType records"

Ingredient.destroy_all
apricot_brandy    = Ingredient.create!({ name: 'Apricot brandy',    ingredient_type: spirit,     in_stock: true })
aromatic_bitters  = Ingredient.create!({ name: 'Aromatic bitters',  ingredient_type: sweetener,  in_stock: true })
bourbon           = Ingredient.create!({ name: 'Bourbon',           ingredient_type: spirit,     in_stock: true })
brandy            = Ingredient.create!({ name: 'Brandy',            ingredient_type: spirit,     in_stock: true })
cachaca           = Ingredient.create!({ name: 'Cachaça',           ingredient_type: spirit,     in_stock: false })
calvados          = Ingredient.create!({ name: 'Calvados',          ingredient_type: spirit,     in_stock: true })
campari           = Ingredient.create!({ name: 'Campari',           ingredient_type: liquer,     in_stock: true })
cognac            = Ingredient.create!({ name: 'Cognac',            ingredient_type: spirit,     in_stock: true })
cola              = Ingredient.create!({ name: 'Cola',              ingredient_type: soda,       in_stock: true })
cranberry_juice   = Ingredient.create!({ name: 'Cranberry juice',   ingredient_type: juice,      in_stock: false })
cream             = Ingredient.create!({ name: 'Cream',             ingredient_type: sweetener,  in_stock: false })
creme_de_cacao    = Ingredient.create!({ name: 'Crème de cacao',    ingredient_type: liquer,     in_stock: false })
creme_de_menthe   = Ingredient.create!({ name: 'Crème de menthe',   ingredient_type: liquer,     in_stock: true })
creme_de_violette = Ingredient.create!({ name: 'Crème de violette', ingredient_type: liquer,     in_stock: false })
curacao           = Ingredient.create!({ name: 'Curaçao',           ingredient_type: liquer,     in_stock: true })
dry_vermouth      = Ingredient.create!({ name: 'Dry vermouth',      ingredient_type: wine,       in_stock: true })
egg_white         = Ingredient.create!({ name: 'Egg white',         ingredient_type: emulsifier, in_stock: true })
galliano          = Ingredient.create!({ name: 'Galliano',          ingredient_type: liquer,     in_stock: false })
gin               = Ingredient.create!({ name: 'Gin',               ingredient_type: spirit,     in_stock: true })
gin               = Ingredient.create!({ name: 'Gin',               ingredient_type: spirit,     in_stock: true })
green_chartreuse  = Ingredient.create!({ name: 'Green Chartreuse',  ingredient_type: liquer,     in_stock: false })
honey_syrup       = Ingredient.create!({ name: 'Honey syrup',       ingredient_type: sweetener,  in_stock: true })
lemon_juice       = Ingredient.create!({ name: 'Lemon juice',       ingredient_type: juice,      in_stock: true })
lime              = Ingredient.create!({ name: 'Lime',              ingredient_type: fruit,      in_stock: true })
lime_juice        = Ingredient.create!({ name: 'Lime juice',        ingredient_type: juice,      in_stock: true })
maraschino        = Ingredient.create!({ name: 'Maraschino liquer', ingredient_type: liquer,     in_stock: true })
orange_bitters    = Ingredient.create!({ name: 'Orange bitters',    ingredient_type: sweetener,  in_stock: true })
orange_juice      = Ingredient.create!({ name: 'Orange juice',      ingredient_type: juice,      in_stock: false })
peach_schnapps    = Ingredient.create!({ name: 'Peach schnapps',    ingredient_type: liquer,     in_stock: true })
raspberry_syrup   = Ingredient.create!({ name: 'Raspberry syrup',   ingredient_type: sweetener,  in_stock: true })
red_vermouth      = Ingredient.create!({ name: 'Red vermouth',      ingredient_type: wine,       in_stock: true })
simple_syrup      = Ingredient.create!({ name: 'Simple syrup',      ingredient_type: sweetener,  in_stock: true })
soda_water        = Ingredient.create!({ name: 'Soda water',        ingredient_type: sweetener,  in_stock: false })
sugar             = Ingredient.create!({ name: 'Sugar',             ingredient_type: sweetener,  in_stock: true })
triple_sec        = Ingredient.create!({ name: 'Triple sec',        ingredient_type: liquer,     in_stock: true })
vodka             = Ingredient.create!({ name: 'Vodka',             ingredient_type: spirit,     in_stock: true })
white_rum         = Ingredient.create!({ name: 'White rum',         ingredient_type: spirit,     in_stock: false })
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
    { amount: 45 },
    { amount: 52.5 },
    { amount: 7.5 }
  ]
)
puts "Created #{Quantity.count} Quantity records"

Unit.destroy_all
cl = Unit.create!({ name: 'Centiliter', abbreviation: 'cl' })
ml = Unit.create!({ name: 'Milliliter', abbreviation: 'ml' })
oz = Unit.create!({ name: 'Ounce', abbreviation: 'oz' })
whole = Unit.create!({ name: 'Whole' })
tsp = Unit.create!({ name: 'Teaspoon', abbreviation: 'tsp.' })
splash = Unit.create!({ name: 'Splash' })
barspoon = Unit.create!({ name: 'Barspoon' })
dash = Unit.create!({ name: 'Dash' })
puts "Created #{Unit.count} Unit records"

DrinkIngredient.destroy_all
drink_ingredients = DrinkIngredient.create!(
  [
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
    # Americano: 30 ml Campari, 30 ml red vermouth, splash soda water
    {
      drink: americano,
      ingredient: campari,
      quantity: quantities[2],
      unit: cl
    },
    {
      drink: americano,
      ingredient: red_vermouth,
      quantity: quantities[2],
      unit: cl
    },
    {
      drink: americano,
      ingredient: soda_water,
      quantity: quantities[0],
      unit: splash
    },
    # angel face
    {
      drink: angel_face,
      ingredient: gin,
      quantity: quantities[2],
      unit: cl
    },
    {
      drink: angel_face,
      ingredient: apricot_brandy,
      quantity: quantities[2],
      unit: cl
    },
    {
      drink: angel_face,
      ingredient: calvados,
      quantity: quantities[2],
      unit: cl
    },
    # aviation
    {
      drink: aviation,
      ingredient: gin,
      quantity: quantities[16],
      unit: ml
    },
    {
      drink: aviation,
      ingredient: lemon_juice,
      quantity: quantities[2],
      unit: cl
    },
    {
      drink: aviation,
      ingredient: maraschino,
      quantity: quantities[2],
      unit: cl
    },
    {
      drink: aviation,
      ingredient: creme_de_violette,
      quantity: quantities[0],
      unit: barspoon
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
    # boulevardier
    {
      drink: boulevardier,
      ingredient: bourbon,
      quantity: quantities[16],
      unit: ml
    },
    {
      drink: boulevardier,
      ingredient: campari,
      quantity: quantities[2],
      unit: cl
    },
    {
      drink: boulevardier,
      ingredient: red_vermouth,
      quantity: quantities[2],
      unit: cl
    },
    # brandy crusta
    {
      drink: brandy_crusta,
      ingredient: brandy,
      quantity: quantities[17],
      unit: ml
    },
    {
      drink: brandy_crusta,
      ingredient: maraschino,
      quantity: quantities[0],
      unit: barspoon
    },
    {
      drink: brandy_crusta,
      ingredient: curacao,
      quantity: quantities[18],
      unit: ml
    },
    {
      drink: brandy_crusta,
      ingredient: simple_syrup,
      quantity: quantities[0],
      unit: barspoon
    },
    {
      drink: brandy_crusta,
      ingredient: aromatic_bitters,
      quantity: quantities[1],
      unit: dash
    },
    # casino
    {
      drink: casino,
      ingredient: gin,
      quantity: quantities[3],
      unit: cl
    },
    {
      drink: casino,
      ingredient: maraschino,
      quantity: quantities[0],
      unit: cl
    },
    {
      drink: casino,
      ingredient: lemon_juice,
      quantity: quantities[0],
      unit: cl
    },
    {
      drink: casino,
      ingredient: orange_bitters,
      quantity: quantities[1],
      unit: dash
    },
    # clover club cocktail
    {
      drink: clover_club,
      ingredient: gin,
      quantity: quantities[17],
      unit: ml
    },
    {
      drink: clover_club,
      ingredient: lemon_juice,
      quantity: quantities[14],
      unit: ml
    },
    {
      drink: clover_club,
      ingredient: raspberry_syrup,
      quantity: quantities[14],
      unit: ml
    },
    {
      drink: clover_club,
      ingredient: dry_vermouth,
      quantity: quantities[4],
      unit: ml
    },
    {
      drink: clover_club,
      ingredient: egg_white,
      quantity: quantities[0],
      unit: whole
    },
    # daiquiri
    {
      drink: daiquiri,
      ingredient: white_rum,
      quantity: quantities[5],
      unit: cl
    },
    {
      drink: daiquiri,
      ingredient: lime_juice,
      quantity: quantities[1],
      unit: cl
    },
    {
      drink: daiquiri,
      ingredient: sugar,
      quantity: quantities[1],
      unit: barspoon
    },


    # Bee's Knees: 52.5 ml dry gin, 22.5 ml lemon juice, 22.5 ml orange juice, 2 teaspoons honey syrup
    {
      drink: bees_knees,
      ingredient: gin,
      quantity: quantities[17],
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
    },
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
    }
  ]
)
puts "Created #{DrinkIngredient.count} DrinkIngredient records"
