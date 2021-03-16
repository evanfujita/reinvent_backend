class ComponentSerializer < ActiveModel::Serializer
  attributes :id, :name, :quantity, :quantity_unit, :dish_id, :notes
end
