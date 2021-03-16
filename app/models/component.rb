class Component < ApplicationRecord
    has_many :component_ingredients
    has_many :ingredients, through: :component_ingredients
end
