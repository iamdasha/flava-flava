class CreateClothfavorites < ActiveRecord::Migration[6.1]
  def change
    create_table :clothfavorites do |t|
      t.references :cloth, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
