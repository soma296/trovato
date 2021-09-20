class CreateSub2jects < ActiveRecord::Migration[6.1]
  def change
    create_table :sub2jects do |t|
      t.string :title2
      t.string :teacher2
      t.integer :user_id

      t.timestamps
    end
  end
end
