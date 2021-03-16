class Station < ApplicationRecord
    has_many :dishes
    # belongs_to :user
end
