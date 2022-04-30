class Brand < ApplicationRecord
  belongs_to :ingredient_category
  belongs_to :ingredient

  validates :name, presence: true
  validates :description, presence: true
  validates :in_stock, inclusion: [true, false]
  validates :ingredient_category_id, presence: true
  validates :ingredient_id, presence: true
end
