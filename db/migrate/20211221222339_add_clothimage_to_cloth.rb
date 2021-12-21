class AddClothimageToCloth < ActiveRecord::Migration[6.1]
  def change
    add_column :cloths, :clothimage, :string
  end
end
