class AddUserRefToCollection < ActiveRecord::Migration[6.1]
  def change
    add_reference :collections, :user, null: false, foreign_key: true
  end
end
