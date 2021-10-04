class AddTeacher3ToSubject < ActiveRecord::Migration[6.1]
  def change
    add_column :subjects, :teacher3, :string
  end
end
