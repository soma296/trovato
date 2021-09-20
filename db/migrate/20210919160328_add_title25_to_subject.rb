class AddTitle25ToSubject < ActiveRecord::Migration[6.1]
  def change
    add_column :subjects, :title25, :string
  end
end
