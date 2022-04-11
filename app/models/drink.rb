class Drink < ApplicationRecord
  belongs_to :service

  validates :name, presence: true
  validates :description, presence: true
  validates :preparation, presence: true
  validates :service_id, presence: true
end
