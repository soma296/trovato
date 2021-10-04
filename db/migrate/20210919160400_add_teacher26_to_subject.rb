class AddTeacher26ToSubject < ActiveRecord::Migration[6.1]
  def change
    add_column :subjects, :teacher26, :string
  end
end
