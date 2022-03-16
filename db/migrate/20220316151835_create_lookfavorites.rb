class CreateLookfavorites < ActiveRecord::Migration[6.1]
  def change
    create_table :lookfavorites do |t|
      t.references :look, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
