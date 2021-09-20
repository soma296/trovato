class CreateSub26jects < ActiveRecord::Migration[6.1]
  def change
    create_table :sub26jects do |t|
      t.string :title26
      t.string :teacher26
      t.integer :user_id

      t.timestamps
    end
  end
end
