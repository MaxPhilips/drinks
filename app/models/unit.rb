class Unit < ApplicationRecord
  validates :name, presence: true
  validates :abbreviation, presence: true
end
