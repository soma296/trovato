class CreateSub16jects < ActiveRecord::Migration[6.1]
  def change
    create_table :sub16jects do |t|
      t.string :title16
      t.string :teacher16
      t.integer :user_id

      t.timestamps
    end
  end
end
