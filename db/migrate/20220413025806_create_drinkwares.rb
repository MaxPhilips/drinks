class CreateDrinkwares < ActiveRecord::Migration[7.0]
  def change
    create_table :drinkwares do |t|
      t.string :name

      t.timestamps
    end
  end
end
