class Quantity < ApplicationRecord
  validates :amount, presence: true
end
