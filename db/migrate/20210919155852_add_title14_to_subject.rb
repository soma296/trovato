class AddTitle14ToSubject < ActiveRecord::Migration[6.1]
  def change
    add_column :subjects, :title14, :string
  end
end
