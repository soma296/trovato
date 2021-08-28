class RemoveDoneFromTasks < ActiveRecord::Migration[6.1]
  def change
    remove_column :tasks, :done, :boolean
  end
end
