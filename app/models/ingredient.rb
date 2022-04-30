class Ingredient < ApplicationRecord
  belongs_to :ingredient_category
  belongs_to :ingredient_type
  has_many :drink_ingredients

  validates :name, presence: true
  validates :in_stock, inclusion: [true, false]
  validates :ingredient_category_id, presence: true
  validates :ingredient_type_id, presence: true
end
