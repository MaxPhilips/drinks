class ChangeDrinkCategoriesToDrinkTypes < ActiveRecord::Migration[7.0]
  def change
    rename_table :drink_categories, :drink_types

    rename_column :drinks, :drink_category_id, :drink_type_id
  end
end
