class Dish < ApplicationRecord
    belongs_to :station
    has_many :components
end
