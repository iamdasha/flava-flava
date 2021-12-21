class AddLinkToCloth < ActiveRecord::Migration[6.1]
  def change
    add_column :cloths, :link, :string
  end
end
