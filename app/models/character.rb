class Character < ApplicationRecord
    has_many :favorite_characters
    has many :characters, through :favorite_characters
end
