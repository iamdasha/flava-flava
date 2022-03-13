class AddFiltertagToPost < ActiveRecord::Migration[6.1]
  def change
    add_reference :posts, :filtertag, null: false, foreign_key: true
  end
end
