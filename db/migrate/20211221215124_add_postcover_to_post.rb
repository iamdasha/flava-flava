class AddPostcoverToPost < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :postcover, :string
  end
end
