class AddPostToLook < ActiveRecord::Migration[6.1]
  def change
    add_reference :looks, :post, null: false, foreign_key: true
  end
end
