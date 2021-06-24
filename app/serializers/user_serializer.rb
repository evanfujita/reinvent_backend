class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :username, :restaurant_name
end
