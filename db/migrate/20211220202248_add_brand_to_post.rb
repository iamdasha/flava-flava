class AddBrandToPost < ActiveRecord::Migration[6.1]
  def change
    add_reference :posts, :brand, null: false, foreign_key: true
  end
end
