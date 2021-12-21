class AddBrandToArtist < ActiveRecord::Migration[6.1]
  def change
    add_reference :artists, :brand, null: false, foreign_key: true
  end
end
