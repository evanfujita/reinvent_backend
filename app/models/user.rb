class User < ApplicationRecord
    has_many :stations
    has_secure_password
end
