class AddTitle4ToSubject < ActiveRecord::Migration[6.1]
  def change
    add_column :subjects, :title4, :string
  end
end
