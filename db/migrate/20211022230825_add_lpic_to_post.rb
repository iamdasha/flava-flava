class AddLpicToPost < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :lpic, :string
  end
end
