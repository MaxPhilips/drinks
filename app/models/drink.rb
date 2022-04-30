class Drink < ApplicationRecord
  belongs_to :service
  belongs_to :drinkware
  belongs_to :drink_category
  has_many :drink_ingredients

  validates :name, presence: true
  validates :description, presence: true
  validates :preparation, presence: true
  validates :service_id, presence: true
  validates :drinkware_id, presence: true
  validates :drink_category_id, presence: true
end
