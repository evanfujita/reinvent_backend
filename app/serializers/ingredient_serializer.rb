class IngredientSerializer < ActiveModel::Serializer
  attributes :name, :quantity, :quantity_unit, :par, :category_id
  belongs_to :category
end
