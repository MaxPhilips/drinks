class AddDrinkCategoryToDrinks < ActiveRecord::Migration[7.0]
  def change
    add_reference :drinks, :drink_category, null: false, foreign_key: true
  end
end
