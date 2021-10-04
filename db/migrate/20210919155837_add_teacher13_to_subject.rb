class AddTeacher13ToSubject < ActiveRecord::Migration[6.1]
  def change
    add_column :subjects, :teacher13, :string
  end
end
