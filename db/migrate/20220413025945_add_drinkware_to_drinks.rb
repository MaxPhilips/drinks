class AddDrinkwareToDrinks < ActiveRecord::Migration[7.0]
  def change
    add_reference :drinks, :drinkware, null: false, foreign_key: true
  end
end
