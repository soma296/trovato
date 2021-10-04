class AddUserIdToSubject < ActiveRecord::Migration[6.1]
  def change
    add_column :subjects, :user_id, :integer
  end
end
