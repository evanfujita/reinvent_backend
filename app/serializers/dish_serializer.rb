class DishSerializer < ActiveModel::Serializer
  attributes :id, :name, :station_id, :notes
end
