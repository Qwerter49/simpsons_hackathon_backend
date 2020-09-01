class User < ApplicationRecord
    has_many :favorite_characters
    has_many: users, through: :favorite_characters
end
