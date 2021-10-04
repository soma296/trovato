class AddTitle10ToSubject < ActiveRecord::Migration[6.1]
  def change
    add_column :subjects, :title10, :string
  end
end
