class ChangeIngredientCategoriesToIngredientTypes < ActiveRecord::Migration[7.0]
  def change
    rename_table :ingredient_categories, :ingredient_types

    rename_column :brands, :ingredient_category_id, :ingredient_type_id
  end
end
