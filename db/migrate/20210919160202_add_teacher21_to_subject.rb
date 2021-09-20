class AddTeacher21ToSubject < ActiveRecord::Migration[6.1]
  def change
    add_column :subjects, :teacher21, :string
  end
end
