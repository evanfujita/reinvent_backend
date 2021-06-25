class OrderSerializer < ActiveModel::Serializer
  attributes :id, :ingredient_id, :vendor_id, :quantity_ordered, :user_id, :received, :quantity_received
end
