class AddTitle20ToSubject < ActiveRecord::Migration[6.1]
  def change
    add_column :subjects, :title20, :string
  end
end
