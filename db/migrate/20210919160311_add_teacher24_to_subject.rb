class AddTeacher24ToSubject < ActiveRecord::Migration[6.1]
  def change
    add_column :subjects, :teacher24, :string
  end
end
