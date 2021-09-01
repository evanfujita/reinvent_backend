class CreateIngredients < ActiveRecord::Migration[6.1]
  def change
    create_table :ingredients do |t|
      t.string :name, null: false
      t.integer :quantity, default: 1
      t.string :quantity_unit, null: false
      t.integer :par, null: false
      t.string :category_id, null: false
      t.string :vendor_id, null: false

      t.timestamps
    end
  end
end
