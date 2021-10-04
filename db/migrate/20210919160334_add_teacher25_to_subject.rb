class AddTeacher25ToSubject < ActiveRecord::Migration[6.1]
  def change
    add_column :subjects, :teacher25, :string
  end
end
