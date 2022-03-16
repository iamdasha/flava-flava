class CreateCloths < ActiveRecord::Migration[6.1]
  def change
    create_table :cloths do |t|
      t.string :name

      t.timestamps

      t.string :clothimage
      t.string :link    
    end
  end
end
