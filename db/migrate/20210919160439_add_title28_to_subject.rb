class AddTitle28ToSubject < ActiveRecord::Migration[6.1]
  def change
    add_column :subjects, :title28, :string
  end
end
