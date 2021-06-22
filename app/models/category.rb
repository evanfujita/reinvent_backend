class Category < ApplicationRecord
    belongs_to :user
    has_many :ingredients

    scope :order_by_name, -> { order(:name) }

    
end
