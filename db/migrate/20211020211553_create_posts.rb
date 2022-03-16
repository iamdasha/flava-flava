class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.timestamps

      t.string :postcover
      t.string :fimage
      t.string :simage
      t.string :timage
    end
  end
end
