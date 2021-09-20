class AddTitle5ToSubject < ActiveRecord::Migration[6.1]
  def change
    add_column :subjects, :title5, :string
  end
end
