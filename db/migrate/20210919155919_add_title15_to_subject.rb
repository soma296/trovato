class AddTitle15ToSubject < ActiveRecord::Migration[6.1]
  def change
    add_column :subjects, :title15, :string
  end
end
