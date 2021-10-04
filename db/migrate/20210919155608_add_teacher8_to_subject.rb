class AddTeacher8ToSubject < ActiveRecord::Migration[6.1]
  def change
    add_column :subjects, :teacher8, :string
  end
end
