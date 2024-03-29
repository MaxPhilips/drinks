class CreateDrinkIngredients < ActiveRecord::Migration[7.0]
  def change
    create_table :drink_ingredients do |t|
      t.references :drink, null: false, foreign_key: true
      t.references :ingredient, null: false, foreign_key: true
      t.references :quantity, null: false, foreign_key: true
      t.references :unit, null: false, foreign_key: true

      t.timestamps
    end
  end
end
