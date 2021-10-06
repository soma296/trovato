class AddTitle6ToSubject < ActiveRecord::Migration[6.1]
  def change
    add_column :subjects, :title6, :string
  end
end
