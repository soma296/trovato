class AddTitle16ToSubject < ActiveRecord::Migration[6.1]
  def change
    add_column :subjects, :title16, :string
  end
end
