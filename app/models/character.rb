class Character < ApplicationRecord
    has_many :favorite_characters
    has_many :users, through: :favorite_characters
    has_many :quotejoins
    has_many :quotes, through: :quotejoins
end
