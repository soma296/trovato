class AddWeekToBringings < ActiveRecord::Migration[6.1]
  def change
    add_column :bringings, :week, :boolean
  end
end
