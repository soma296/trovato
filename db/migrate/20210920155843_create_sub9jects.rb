class CreateSub9jects < ActiveRecord::Migration[6.1]
  def change
    create_table :sub9jects do |t|
      t.string :title9
      t.string :teacher9
      t.integer :user_id

      t.timestamps
    end
  end
end
