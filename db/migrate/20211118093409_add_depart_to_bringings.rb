class AddDepartToBringings < ActiveRecord::Migration[6.1]
  def change
    add_column :bringings, :depart, :string
  end
end
