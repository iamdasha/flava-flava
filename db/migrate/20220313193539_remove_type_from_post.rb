class RemoveTypeFromPost < ActiveRecord::Migration[6.1]
  def change
    remove_reference :posts, :type, null: false, foreign_key: true
  end
end
