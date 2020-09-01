class Quote < ApplicationRecord
    belongs_to :quote_joins
    belongs_to :characters, through: :quote_joins
end
