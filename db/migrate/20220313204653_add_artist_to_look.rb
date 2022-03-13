class AddArtistToLook < ActiveRecord::Migration[6.1]
  def change
    add_reference :looks, :artist, null: false, foreign_key: true
  end
end
