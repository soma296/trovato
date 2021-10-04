class AddTeacher18ToSubject < ActiveRecord::Migration[6.1]
  def change
    add_column :subjects, :teacher18, :string
  end
end
