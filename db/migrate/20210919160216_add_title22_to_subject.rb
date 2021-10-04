class AddTitle22ToSubject < ActiveRecord::Migration[6.1]
  def change
    add_column :subjects, :title22, :string
  end
end
