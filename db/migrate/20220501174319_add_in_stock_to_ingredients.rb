class AddInStockToIngredients < ActiveRecord::Migration[7.0]
  def change
    add_column :ingredients, :in_stock, :boolean
  end
end
