class DishComponent < ApplicationRecord
    has_many :components_ingredients
    has_many :components, through: :component_ingredients
end
