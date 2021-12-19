class CreateArtists < ActiveRecord::Migration[6.1]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :sex
      t.string :age

      t.timestamps
    end
  end
end
