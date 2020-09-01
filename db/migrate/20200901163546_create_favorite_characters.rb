class CreateFavoriteCharacters < ActiveRecord::Migration[6.0]
  def change
    create_table :favorite_characters do |t|
      t.references :user, null: false, foreign_key: true
      t.references :character, null: false, foreign_key: true

      t.timestamps
    end
  end
end
