class AddTeacher14ToSubject < ActiveRecord::Migration[6.1]
  def change
    add_column :subjects, :teacher14, :string
  end
end
