class AddArtistphotoToPost < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :artistphoto, :string
  end
end
