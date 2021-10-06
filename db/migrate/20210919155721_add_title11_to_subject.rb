class AddTitle11ToSubject < ActiveRecord::Migration[6.1]
  def change
    add_column :subjects, :title11, :string
  end
end
