class AddUseridToBringings < ActiveRecord::Migration[6.1]
  def change
    add_column :bringings, :user_id, :integer
  end
end
