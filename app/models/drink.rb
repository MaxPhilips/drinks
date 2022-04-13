class Drink < ApplicationRecord
  belongs_to :service
  belongs_to :drinkware

  validates :name, presence: true
  validates :description, presence: true
  validates :preparation, presence: true
  validates :service_id, presence: true
  validates :drinkware_id, presence: true
end
