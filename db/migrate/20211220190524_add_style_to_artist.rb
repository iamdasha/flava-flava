class AddStyleToArtist < ActiveRecord::Migration[6.1]
  def change
    add_reference :artists, :style, null: false, foreign_key: true
  end
end
