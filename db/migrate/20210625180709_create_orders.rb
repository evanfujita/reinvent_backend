class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.integer :ingredient_id, foreign_key: true
      t.integer :vendor_id, foreign_key: true
      t.integer :quantity_ordered
      t.integer :user_id, foreign_key: true
      t.boolean :received, default: false
      t.integer :quantity_received

      t.timestamps
    end
  end
end
