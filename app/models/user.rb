class User < ApplicationRecord
    has_many :stations
    has_many :categories
    has_many :orders
    has_secure_password

    # validates :username, uniqueness: { case_sensitive: false }
end
