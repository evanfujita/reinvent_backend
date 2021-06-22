class Ingredient < ApplicationRecord
    belongs_to :category
    belongs_to :vendor
    has_many :orders
    has_many :component_ingredients
    has_many :components, through: :component_ingredients

    scope :order_by_name, -> { order(:name) }
end
