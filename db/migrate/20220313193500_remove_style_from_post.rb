class RemoveStyleFromPost < ActiveRecord::Migration[6.1]
  def change
    remove_reference :posts, :style, null: false, foreign_key: true
  end
end
