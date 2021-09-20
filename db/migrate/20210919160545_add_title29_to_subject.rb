class AddTitle29ToSubject < ActiveRecord::Migration[6.1]
  def change
    add_column :subjects, :title29, :string
  end
end
