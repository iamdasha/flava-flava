class AddImageToLook < ActiveRecord::Migration[6.1]
  def change
    add_column :looks, :image, :string
  end
end
