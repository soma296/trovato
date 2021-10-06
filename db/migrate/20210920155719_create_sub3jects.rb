class CreateSub3jects < ActiveRecord::Migration[6.1]
  def change
    create_table :sub3jects do |t|
      t.string :title3
      t.string :teacher3
      t.integer :user_id

      t.timestamps
    end
  end
end
