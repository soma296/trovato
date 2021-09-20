class CreateSub8jects < ActiveRecord::Migration[6.1]
  def change
    create_table :sub8jects do |t|
      t.string :title8
      t.string :teacher8
      t.integer :user_id

      t.timestamps
    end
  end
end
