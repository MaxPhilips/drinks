class CreateIngredientTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :ingredient_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
