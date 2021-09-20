class AddTeacher2ToSubject < ActiveRecord::Migration[6.1]
  def change
    add_column :subjects, :teacher2, :string
  end
end
