class AddTitle3ToSubject < ActiveRecord::Migration[6.1]
  def change
    add_column :subjects, :title3, :string
  end
end
