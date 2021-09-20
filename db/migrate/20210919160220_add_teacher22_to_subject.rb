class AddTeacher22ToSubject < ActiveRecord::Migration[6.1]
  def change
    add_column :subjects, :teacher22, :string
  end
end
