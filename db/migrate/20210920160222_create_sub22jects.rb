class CreateSub22jects < ActiveRecord::Migration[6.1]
  def change
    create_table :sub22jects do |t|
      t.string :title22
      t.string :teacher22
      t.integer :user_id

      t.timestamps
    end
  end
end
