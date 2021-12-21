class AddArtistRefToCloths < ActiveRecord::Migration[6.1]
  def change
    add_reference :cloths, :artist, null: false, foreign_key: true
  end
end
