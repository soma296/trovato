class AddUserIdToSub1jects < ActiveRecord::Migration[6.1]
  def change
    add_column :sub1jects, :user_id, :integer
  end
end
