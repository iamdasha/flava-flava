class AddYoutubeToArtist < ActiveRecord::Migration[6.1]
  def change
    add_column :artists, :youtube, :string
  end
end
