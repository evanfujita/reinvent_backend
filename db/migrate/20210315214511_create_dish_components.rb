class CreateDishComponents < ActiveRecord::Migration[6.1]
  def change
    create_table :dish_components do |t|
      t.integer :dish_id
      t.integer :component_id
      t.integer :quantity
      t.string :quantity_unit

      t.timestamps
    end
  end
end
