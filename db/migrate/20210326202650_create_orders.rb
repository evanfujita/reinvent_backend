class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.integer :ingredient_id
      t.string :quantity_unit
      t.integer :previous_amount
      t.integer :current_amount

      t.timestamps
    end
  end
end
