class ChangeQuantitiesAmountFromIntegerToFloat < ActiveRecord::Migration[7.0]
  def change
    change_column :quantities, :amount, :float
  end
end
