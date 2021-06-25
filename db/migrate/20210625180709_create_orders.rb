class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.integer :ingredient_id
      t.integer :vendor_id
      t.integer :quantity_ordered
      t.integer :user_id
      t.boolean :received, default: false
      t.integer :quantity_received

      t.timestamps
    end
  end
end
