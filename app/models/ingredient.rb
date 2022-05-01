class Ingredient < ApplicationRecord
  belongs_to :ingredient_type
  has_many :brands
  has_many :drink_ingredients

  validates :name, presence: true
  validates :ingredient_type_id, presence: true
end
