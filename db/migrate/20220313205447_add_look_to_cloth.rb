class AddLookToCloth < ActiveRecord::Migration[6.1]
  def change
    add_reference :cloths, :look, null: false, foreign_key: true
  end
end
