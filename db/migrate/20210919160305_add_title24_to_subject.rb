class AddTitle24ToSubject < ActiveRecord::Migration[6.1]
  def change
    add_column :subjects, :title24, :string
  end
end
