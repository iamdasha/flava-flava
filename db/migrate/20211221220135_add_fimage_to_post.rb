class AddFimageToPost < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :fimage, :string
    add_column :posts, :simage, :string
    add_column :posts, :timage, :string
  end
end
