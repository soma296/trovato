class CreateBringings < ActiveRecord::Migration[6.1]
  def change
    create_table :bringings do |t|
      t.date :day
      t.string :title
      t.string :bringing

      t.timestamps
    end
  end
end
