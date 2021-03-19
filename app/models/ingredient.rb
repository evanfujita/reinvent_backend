class Ingredient < ApplicationRecord
    belongs_to :category
    has_many :component_ingredients
    has_many :components, through: :component_ingredients
end
