class AddTeacher20ToSubject < ActiveRecord::Migration[6.1]
  def change
    add_column :subjects, :teacher20, :string
  end
end
