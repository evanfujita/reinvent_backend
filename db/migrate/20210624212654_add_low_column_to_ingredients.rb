class AddLowColumnToIngredients < ActiveRecord::Migration[6.1]
  def change
    add_column :ingredients, :low, :boolean
  end
end
