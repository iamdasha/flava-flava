class AddSpicToPost < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :spic, :string
  end
end
