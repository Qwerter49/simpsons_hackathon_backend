class QuoteJoin < ApplicationRecord
  belongs_to :quotes
  belongs_to :characters
end
