class Drink < ApplicationRecord
  belongs_to :service
  belongs_to :drinkware
  belongs_to :drink_type
  has_many :drink_ingredients

  validates :name, presence: true
  validates :drink_type_id, presence: true
  validates :description, presence: true
  validates :preparation, presence: true
  validates :service_id, presence: true
  validates :drinkware_id, presence: true

  def can_be_made?
    drink_ingredients = self.drink_ingredients

    # ingredients can be in_stock or have a brand with in_stock
    in_stocks = drink_ingredients.map do |drink_ingredient|
      drink_ingredient.ingredient.in_stock || drink_ingredient.ingredient.brands.pluck(:in_stock).any?
    end

    in_stocks.all?
  end
end
