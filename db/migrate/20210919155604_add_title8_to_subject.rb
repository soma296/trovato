class AddTitle8ToSubject < ActiveRecord::Migration[6.1]
  def change
    add_column :subjects, :title8, :string
  end
end
