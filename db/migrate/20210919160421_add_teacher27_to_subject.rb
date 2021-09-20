class AddTeacher27ToSubject < ActiveRecord::Migration[6.1]
  def change
    add_column :subjects, :teacher27, :string
  end
end
