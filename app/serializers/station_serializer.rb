class StationSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :stations
end
