class Ingredient < ApplicationRecord
  has_many :brands
  has_many :drink_ingredients

  validates :name, presence: true
end
