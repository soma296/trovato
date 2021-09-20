class AddTitle7ToSubject < ActiveRecord::Migration[6.1]
  def change
    add_column :subjects, :title7, :string
  end
end
