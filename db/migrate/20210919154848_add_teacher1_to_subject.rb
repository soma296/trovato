class AddTeacher1ToSubject < ActiveRecord::Migration[6.1]
  def change
    add_column :subjects, :teather1, :string
  end
end
