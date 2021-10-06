class AddTitle19ToSubject < ActiveRecord::Migration[6.1]
  def change
    add_column :subjects, :title19, :string
  end
end
