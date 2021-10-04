class CreateSub13jects < ActiveRecord::Migration[6.1]
  def change
    create_table :sub13jects do |t|
      t.string :title13
      t.string :teacher13
      t.integer :user_id

      t.timestamps
    end
  end
end
