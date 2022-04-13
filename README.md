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

join table: drink_ingredients
id
drink_id
ingredient_id
unit_id
quantity_id

ingredients
id
name
in_stock
fk: ingredient_category
fk: ingredient_type

ingredient_categories
id
name

ingredient_types
id
name

units
id
name

quantities
id
name

served
id
name

drinkware
id
name

drink_category
id
name
