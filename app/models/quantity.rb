class Quantity < ApplicationRecord
  has_many :drink_ingredients

  validates :amount, presence: true
end
