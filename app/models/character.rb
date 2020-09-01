class Character < ApplicationRecord
    has_many :favorite_characters
    has_many :users, through: :favorite_characters
    has_many :quote_joins
    has_many :quotes, through: :quote_joins
end
