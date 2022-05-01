class Brand < ApplicationRecord
  belongs_to :ingredient

  validates :name, presence: true
  validates :description, presence: true
  validates :in_stock, inclusion: [true, false]
  validates :ingredient_id, presence: true
end
