class RemoveFiltertagFromArtist < ActiveRecord::Migration[6.1]
  def change
    remove_reference :artists, :filtertag, null: false, foreign_key: true
  end
end
