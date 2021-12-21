class CreateFavotiteAs < ActiveRecord::Migration[6.1]
  def change
    create_table :favotite_as do |t|
      t.references :artist, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
