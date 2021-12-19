class AddArtistphotoToArtist < ActiveRecord::Migration[6.1]
  def change
    add_column :artists, :artistphoto, :string
  end
end
