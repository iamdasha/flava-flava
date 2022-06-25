class AddCovergToCollection < ActiveRecord::Migration[6.1]
  def change
    add_column :collections, :coverg, :string
  end
end
