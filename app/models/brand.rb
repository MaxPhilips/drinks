class Brand < ApplicationRecord
  belongs_to :ingredient

  validates :name, presence: true
  validates :description, presence: true
  validates :in_stock, inclusion: [true, false]
  validates :ingredient_id, presence: true, uniqueness: { scope: :name, message: 'This Brand already exists for this Ingredient' }
end
