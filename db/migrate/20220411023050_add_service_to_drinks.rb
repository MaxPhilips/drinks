class AddServiceToDrinks < ActiveRecord::Migration[7.0]
  def change
    add_reference :drinks, :service, null: false, foreign_key: true
  end
end
