class User < ApplicationRecord
    has_many :favorite_characters
    has_many :characters, through: :favorite_characters
end
