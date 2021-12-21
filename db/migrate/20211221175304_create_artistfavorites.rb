class CreateArtistfavorites < ActiveRecord::Migration[6.1]
  def change
    create_table :artistfavorites do |t|
      t.references :artist, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
