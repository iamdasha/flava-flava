class AddGenreToArtist < ActiveRecord::Migration[6.1]
  def change
    add_column :artists, :genre, :string
  end
end
