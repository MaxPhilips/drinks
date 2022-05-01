# drinks

## db

### tables

* ingredient categories: spirit, liqueur, bitters, garnish
* ingredient types: coffee liqueur
* ingredients: Kahlua|Liqueur|Coffee liqueur|Yes
* drink categories: cocktail, wine cocktail, mixed drink, shooter
* drinks: Alexander
* served: neat, up, down, on the rocks
* drinkware: coupe, highball, rocks glass

----

https://dev.to/amckean12/designing-a-relational-database-for-a-cookbook-4nj6

drinks
id
name
description
preparation
fk: served
fk: drinkware
fk: drink_category

served
id
name

drinkware
id
name

drink_category
id
name

join table: drink_ingredients
id
drink_id
ingredient_id
quantity_id
unit_id

brands
id
name
description
in_stock
fk: ingredient

ingredient_types
id
name

ingredients
id
name
fk: ingredient_type

quantities
id
amount

units
id
name
abbreviation
