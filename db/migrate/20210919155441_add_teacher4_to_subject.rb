class AddTeacher4ToSubject < ActiveRecord::Migration[6.1]
  def change
    add_column :subjects, :teacher4, :string
  end
end
