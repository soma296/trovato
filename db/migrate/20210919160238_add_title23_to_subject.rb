class AddTitle23ToSubject < ActiveRecord::Migration[6.1]
  def change
    add_column :subjects, :title23, :string
  end
end
