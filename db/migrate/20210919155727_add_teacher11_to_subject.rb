class AddTeacher11ToSubject < ActiveRecord::Migration[6.1]
  def change
    add_column :subjects, :teacher11, :string
  end
end
