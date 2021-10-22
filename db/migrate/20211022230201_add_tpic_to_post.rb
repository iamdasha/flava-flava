class AddTpicToPost < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :tpic, :string
  end
end
