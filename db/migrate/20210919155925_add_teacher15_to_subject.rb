class AddTeacher15ToSubject < ActiveRecord::Migration[6.1]
  def change
    add_column :subjects, :teacher15, :string
  end
end
