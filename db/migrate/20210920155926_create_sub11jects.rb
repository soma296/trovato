class CreateSub11jects < ActiveRecord::Migration[6.1]
  def change
    create_table :sub11jects do |t|
      t.string :title11
      t.string :teacher11
      t.integer :user_id

      t.timestamps
    end
  end
end
