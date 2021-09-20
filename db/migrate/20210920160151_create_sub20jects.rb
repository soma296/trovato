class CreateSub20jects < ActiveRecord::Migration[6.1]
  def change
    create_table :sub20jects do |t|
      t.string :title20
      t.string :teacher20
      t.integer :user_id

      t.timestamps
    end
  end
end
