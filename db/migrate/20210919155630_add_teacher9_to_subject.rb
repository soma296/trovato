class AddTeacher9ToSubject < ActiveRecord::Migration[6.1]
  def change
    add_column :subjects, :teacher9, :string
  end
end
