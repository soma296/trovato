class AddTitle12ToSubject < ActiveRecord::Migration[6.1]
  def change
    add_column :subjects, :title12, :string
  end
end
