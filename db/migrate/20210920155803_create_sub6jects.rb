class CreateSub6jects < ActiveRecord::Migration[6.1]
  def change
    create_table :sub6jects do |t|
      t.string :title6
      t.string :teacher6
      t.integer :user_id

      t.timestamps
    end
  end
end
