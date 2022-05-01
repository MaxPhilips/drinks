class MoveIngredientTypeIdFromBrandToIngredient < ActiveRecord::Migration[7.0]
  def change
    remove_reference :brands, :ingredient_type

    add_reference :ingredients, :ingredient_type, null: false, foreign_key: true
  end
end
