class CreateQuantities < ActiveRecord::Migration[7.0]
  def change
    create_table :quantities do |t|
      t.integer :amount

      t.timestamps
    end
  end
end
