class Order < ApplicationRecord
    belongs_to :ingredient 
    belongs_to :user
    belongs_to :vendor
end
