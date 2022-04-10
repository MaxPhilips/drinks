class Drink < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :preparation, presence: true
end
