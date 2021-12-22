class AddUserRefToFiltertags < ActiveRecord::Migration[6.1]
  def change
    add_reference :filtertags, :user, null: false, foreign_key: true
  end
end
