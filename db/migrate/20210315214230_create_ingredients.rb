class CreateIngredients < ActiveRecord::Migration[6.1]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.integer :quantity
      t.string :quantity_unit
      t.integer :par
      t.string :category_id
      t.string :vendor_id

      t.timestamps
    end
  end
end
