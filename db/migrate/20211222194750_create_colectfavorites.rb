class CreateColectfavorites < ActiveRecord::Migration[6.1]
  def change
    create_table :colectfavorites do |t|
      t.references :collection, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
