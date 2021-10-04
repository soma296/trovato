class AddTeacher12ToSubject < ActiveRecord::Migration[6.1]
  def change
    add_column :subjects, :teacher12, :string
  end
end
