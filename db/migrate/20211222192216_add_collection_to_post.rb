class AddCollectionToPost < ActiveRecord::Migration[6.1]
  def change
    add_reference :posts, :collection, null: false, foreign_key: true
  end
end
