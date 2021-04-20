class CreateIngredients < ActiveRecord::Migration[6.1]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.references :ingredient_type, null: false, foreign_key: true
      t.references :ingredient_category, null: false, foreign_key: true
      t.boolean :in_stock

      t.timestamps
    end
  end
end
