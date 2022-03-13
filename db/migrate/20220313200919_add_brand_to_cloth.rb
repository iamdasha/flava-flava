class AddBrandToCloth < ActiveRecord::Migration[6.1]
  def change
    add_reference :cloths, :brand, null: false, foreign_key: true
  end
end
