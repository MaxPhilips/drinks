class Ingredient < ApplicationRecord
  belongs_to :ingredient_category
  belongs_to :ingredient_type
  has_many :drink_ingredients

  validates :name, presence: true
  validates :in_stock, presence: true
  validates :ingredient_category_id, presence: true
  validates :ingredient_type_id, presence: true
end
