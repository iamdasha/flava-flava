class AddStyleToArtist < ActiveRecord::Migration[6.1]
  def change
    add_column :artists, :style, :string
    add_column :artists, :wiki, :string
  end
end
