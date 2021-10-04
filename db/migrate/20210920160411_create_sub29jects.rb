class CreateSub29jects < ActiveRecord::Migration[6.1]
  def change
    create_table :sub29jects do |t|
      t.string :title29
      t.string :teacher29
      t.integer :user_id

      t.timestamps
    end
  end
end
