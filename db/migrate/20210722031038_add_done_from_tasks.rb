class AddDoneFromTasks < ActiveRecord::Migration[6.1]
  def change
    add_column :tasks, :done, :string
  end
end
