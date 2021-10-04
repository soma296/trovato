class AddTeacher28ToSubject < ActiveRecord::Migration[6.1]
  def change
    add_column :subjects, :teacher28, :string
  end
end
