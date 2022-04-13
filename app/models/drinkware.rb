class Drinkware < ApplicationRecord
  has_many :drinks

  validates :name, presence: true
end
