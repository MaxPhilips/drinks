class Unit < ApplicationRecord
  has_many :drink_ingredients

  validates :name, presence: true
end
