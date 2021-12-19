class AddFiltertagToArtist < ActiveRecord::Migration[6.1]
  def change
    add_reference :artists, :filtertag, null: false, foreign_key: true
  end
end
