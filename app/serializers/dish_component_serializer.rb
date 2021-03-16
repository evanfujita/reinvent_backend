class DishComponentSerializer < ActiveModel::Serializer
  attributes :id, :dish_id, :component_id, :qunatity, :quantity_unit
end
