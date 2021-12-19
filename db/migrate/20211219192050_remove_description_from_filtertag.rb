class RemoveDescriptionFromFiltertag < ActiveRecord::Migration[6.1]
  def change
    remove_column :filtertags, :description, :text
  end
end
