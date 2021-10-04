class AddTeacher16ToSubject < ActiveRecord::Migration[6.1]
  def change
    add_column :subjects, :teacher16, :string
  end
end
