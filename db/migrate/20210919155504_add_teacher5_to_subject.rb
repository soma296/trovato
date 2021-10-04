class AddTeacher5ToSubject < ActiveRecord::Migration[6.1]
  def change
    add_column :subjects, :teacher5, :string
  end
end
