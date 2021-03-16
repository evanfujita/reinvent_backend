class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :restaurant_name
end
