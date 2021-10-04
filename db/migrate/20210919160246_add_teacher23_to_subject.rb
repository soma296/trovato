class AddTeacher23ToSubject < ActiveRecord::Migration[6.1]
  def change
    add_column :subjects, :teacher23, :string
  end
end
