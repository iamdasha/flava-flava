class RemoveStyleFromArtist < ActiveRecord::Migration[6.1]
  def change
    remove_reference :artists, :style, null: false, foreign_key: true
  end
end
