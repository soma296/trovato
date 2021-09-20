class AddTitle9ToSubject < ActiveRecord::Migration[6.1]
  def change
    add_column :subjects, :title9, :string
  end
end
