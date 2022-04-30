class DrinkIngredient < ApplicationRecord
  belongs_to :drink
  belongs_to :ingredient
  belongs_to :quantity
  belongs_to :unit

  validates :drink_id, presence: true
  validates :ingredient_id, presence: true
  validates :quantity_id, presence: true
  validates :unit_id, presence: true
end
