class AddTeacher10ToSubject < ActiveRecord::Migration[6.1]
  def change
    add_column :subjects, :teacher10, :string
  end
end
