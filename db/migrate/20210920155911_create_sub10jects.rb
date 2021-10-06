class CreateSub10jects < ActiveRecord::Migration[6.1]
  def change
    create_table :sub10jects do |t|
      t.string :title10
      t.string :teacher10
      t.integer :user_id

      t.timestamps
    end
  end
end
