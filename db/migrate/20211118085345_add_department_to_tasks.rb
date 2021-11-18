class AddDepartmentToTasks < ActiveRecord::Migration[6.1]
  def change
    add_column :tasks, :department, :string
  end
end
