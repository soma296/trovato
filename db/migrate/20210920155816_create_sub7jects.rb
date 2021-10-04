class CreateSub7jects < ActiveRecord::Migration[6.1]
  def change
    create_table :sub7jects do |t|
      t.string :title7
      t.string :teacher7
      t.integer :user_id

      t.timestamps
    end
  end
end
