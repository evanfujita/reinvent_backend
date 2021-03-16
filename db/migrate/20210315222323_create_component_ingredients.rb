class CreateComponentIngredients < ActiveRecord::Migration[6.1]
  def change
    create_table :component_ingredients do |t|
      t.integer :component_id
      t.integer :ingredient_id

      t.timestamps
    end
  end
end
