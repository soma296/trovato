class AddTitle21ToSubject < ActiveRecord::Migration[6.1]
  def change
    add_column :subjects, :title21, :string
  end
end
