class RemoveNameFromPost < ActiveRecord::Migration[6.1]
  def change
    remove_column :posts, :name, :string
    remove_column :posts, :characteristics, :string
    remove_column :posts, :brands, :string
    remove_column :posts, :filterTag, :string
    remove_column :posts, :country, :string
    remove_column :posts, :image, :string
    remove_column :posts, :fpic, :string
    remove_column :posts, :spic, :string
    remove_column :posts, :tpic, :string
    remove_column :posts, :lpic, :string
  end
end
