class AddTeacher17ToSubject < ActiveRecord::Migration[6.1]
  def change
    add_column :subjects, :teacher17, :string
  end
end
