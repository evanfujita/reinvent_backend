class VendorSerializer < ActiveModel::Serializer
  attributes :id, :name, :representative, :phone, :email
end
