class Ingredient < ApplicationRecord
    has_many :component_ingredients
    has_many :components, through: :component_ingredients
end
