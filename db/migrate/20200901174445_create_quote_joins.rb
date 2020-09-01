class CreateQuoteJoins < ActiveRecord::Migration[6.0]
  def change
    create_table :quote_joins do |t|
      t.references :quote, null: false, foreign_key: true
      t.references :character, null: false, foreign_key: true

      t.timestamps
    end
  end
end
