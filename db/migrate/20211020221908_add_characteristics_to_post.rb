class AddCharacteristicsToPost < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :characteristics, :string
  end
end
