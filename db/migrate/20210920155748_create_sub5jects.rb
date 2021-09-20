class CreateSub5jects < ActiveRecord::Migration[6.1]
  def change
    create_table :sub5jects do |t|
      t.string :title5
      t.string :teacher5
      t.integer :user_id

      t.timestamps
    end
  end
end
