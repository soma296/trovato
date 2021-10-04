class AddTeacher29ToSubject < ActiveRecord::Migration[6.1]
  def change
    add_column :subjects, :teacher29, :string
  end
end
