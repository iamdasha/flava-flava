class AddSpotifyToArtist < ActiveRecord::Migration[6.1]
  def change
    add_column :artists, :spotify, :string
  end
end
