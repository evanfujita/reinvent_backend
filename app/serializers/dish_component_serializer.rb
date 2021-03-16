class DishComponentSerializer < ActiveModel::Serializer
  attributes :id, :dish_id, :component_id, :quantity, :quantity_unit
end
