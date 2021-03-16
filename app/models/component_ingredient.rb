class ComponentIngredient < ApplicationRecord
    belongs_to :component
    belongs_to :ingredient
end
