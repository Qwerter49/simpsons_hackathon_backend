class Quote < ApplicationRecord
    has_one :quote_join
    has_one :character, through: :quote_join
end
