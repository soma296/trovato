class CreateSub15jects < ActiveRecord::Migration[6.1]
  def change
    create_table :sub15jects do |t|
      t.string :title15
      t.string :teacher15
      t.integer :user_id

      t.timestamps
    end
  end
end
