class CreateLooks < ActiveRecord::Migration[6.1]
  def change
    create_table :looks do |t|
      t.string :title
      t.text :content
      t.text :image

      t.timestamps
    end
  end
end
