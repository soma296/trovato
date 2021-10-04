class AddTeacher7ToSubject < ActiveRecord::Migration[6.1]
  def change
    add_column :subjects, :teacher7, :string
  end
end
