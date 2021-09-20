class AddTitle13ToSubject < ActiveRecord::Migration[6.1]
  def change
    add_column :subjects, :title13, :string
  end
end
