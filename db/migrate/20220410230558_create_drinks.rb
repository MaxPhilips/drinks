class CreateDrinks < ActiveRecord::Migration[7.0]
  def change
    create_table :drinks do |t|
      t.string :name
      t.text :description
      t.text :preparation

      t.timestamps
    end
  end
end
