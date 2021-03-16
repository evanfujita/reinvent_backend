class CreateComponents < ActiveRecord::Migration[6.1]
  def change
    create_table :components do |t|
      t.string :name
      t.integer :quantity
      t.string :quantity_unit
      t.integer :par
      t.integer :dish_id
      t.text :notes

      t.timestamps
    end
  end
end
