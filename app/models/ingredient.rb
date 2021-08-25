class Ingredient < ApplicationRecord
    belongs_to :category
    belongs_to :vendor
    has_many :orders

    scope :order_by_name, -> { order(:name)}
    
    def self.low_ingredients
        Ingredient.where(low: true)
    end

    def self.pending_orders
        Ingredient.where(pending: true)
    end

    def low_ingredients_not_ordered
        
    end

end
