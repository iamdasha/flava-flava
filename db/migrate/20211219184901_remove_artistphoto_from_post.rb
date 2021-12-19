class RemoveArtistphotoFromPost < ActiveRecord::Migration[6.1]
  def change
    remove_column :posts, :artistphoto, :string
  end
end
