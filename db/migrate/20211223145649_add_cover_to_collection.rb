class AddCoverToCollection < ActiveRecord::Migration[6.1]
  def change
    add_column :collections, :cover, :string
  end
end
