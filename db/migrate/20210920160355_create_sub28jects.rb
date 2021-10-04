class CreateSub28jects < ActiveRecord::Migration[6.1]
  def change
    create_table :sub28jects do |t|
      t.string :title28
      t.string :teacher28
      t.integer :user_id

      t.timestamps
    end
  end
end
