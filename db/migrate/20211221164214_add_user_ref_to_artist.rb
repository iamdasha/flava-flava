class AddUserRefToArtist < ActiveRecord::Migration[6.1]
  def change
    add_reference :artists, :user, null: false, foreign_key: true
  end
end
