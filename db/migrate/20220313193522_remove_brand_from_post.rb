class RemoveBrandFromPost < ActiveRecord::Migration[6.1]
  def change
    remove_reference :posts, :brand, null: false, foreign_key: true
  end
end
