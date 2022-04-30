class ChangeIngredientsToBrandsAndIngredientTypesToIngredients < ActiveRecord::Migration[7.0]
  def change
    rename_table :ingredients, :brands
    rename_table :ingredient_types, :ingredients

    add_column :brands, :description, :string
    rename_column :brands, :ingredient_type_id, :ingredient_id
  end
end
