class AddTitle1ToSubject < ActiveRecord::Migration[6.1]
  def change
    add_column :subjects, :title1, :string
  end
end
