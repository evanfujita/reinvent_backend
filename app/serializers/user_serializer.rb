class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :username, :restaurant_name
  has_many :categories
  has_many :stations
end
