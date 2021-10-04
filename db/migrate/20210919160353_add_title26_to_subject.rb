class AddTitle26ToSubject < ActiveRecord::Migration[6.1]
  def change
    add_column :subjects, :title26, :string
  end
end
