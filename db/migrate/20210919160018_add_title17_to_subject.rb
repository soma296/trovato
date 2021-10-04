class AddTitle17ToSubject < ActiveRecord::Migration[6.1]
  def change
    add_column :subjects, :title17, :string
  end
end
