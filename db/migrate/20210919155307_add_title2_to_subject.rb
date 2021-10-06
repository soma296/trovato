class AddTitle2ToSubject < ActiveRecord::Migration[6.1]
  def change
    add_column :subjects, :title2, :string
  end
end
