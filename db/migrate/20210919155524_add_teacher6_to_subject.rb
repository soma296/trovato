class AddTeacher6ToSubject < ActiveRecord::Migration[6.1]
  def change
    add_column :subjects, :teacher6, :string
  end
end
