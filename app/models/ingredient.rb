class Ingredient < ApplicationRecord
  belongs_to :ingredient_type
  belongs_to :ingredient_category

  validates :name, presence: true
  validates :ingredient_type, presence: true
  validates :ingredient_category, presence: true
  # validates :in_stock, presence: true
end
