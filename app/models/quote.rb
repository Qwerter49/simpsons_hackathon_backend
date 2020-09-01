class Quote < ApplicationRecord
    has_many :quotejoins
    has_many :characters, through: :quotejoins
end
