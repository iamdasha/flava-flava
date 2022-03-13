class AddFiltertagToLook < ActiveRecord::Migration[6.1]
  def change
    add_reference :looks, :filtertag, null: false, foreign_key: true
  end
end
