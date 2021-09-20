class AddTeacher19ToSubject < ActiveRecord::Migration[6.1]
  def change
    add_column :subjects, :teacher19, :string
  end
end
