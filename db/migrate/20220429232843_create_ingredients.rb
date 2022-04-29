class CreateIngredients < ActiveRecord::Migration[7.0]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.boolean :in_stock
      t.references :ingredient_category, null: false, foreign_key: true
      t.references :ingredient_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
