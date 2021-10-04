class CreateSub17jects < ActiveRecord::Migration[6.1]
  def change
    create_table :sub17jects do |t|
      t.string :title17
      t.string :teacher17
      t.integer :user_id

      t.timestamps
    end
  end
end
