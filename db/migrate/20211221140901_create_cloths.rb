class CreateCloths < ActiveRecord::Migration[6.1]
  def change
    create_table :cloths do |t|
      t.string :name

      t.timestamps
    end
  end
end
