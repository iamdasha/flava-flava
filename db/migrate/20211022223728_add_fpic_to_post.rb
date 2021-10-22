class AddFpicToPost < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :fpic, :string
  end
end
