class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :username, :restaurant_name #, :ingredients
  has_many :categories
end
