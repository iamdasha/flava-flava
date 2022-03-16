class CreateArtists < ActiveRecord::Migration[6.1]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :sex
      t.string :age

      t.timestamps

      t.string :artistphoto
      t.string :genre
      t.string :instagram
      t.string :youtube
      t.string :spotify
    end
  end
end
