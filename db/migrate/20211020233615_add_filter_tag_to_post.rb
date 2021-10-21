class AddFilterTagToPost < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :filterTag, :string
  end
end
