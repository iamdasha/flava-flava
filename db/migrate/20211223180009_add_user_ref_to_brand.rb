class AddUserRefToBrand < ActiveRecord::Migration[6.1]
  def change
    add_reference :brands, :user, null: false, foreign_key: true
  end
end
