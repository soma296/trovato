class CreateSub25jects < ActiveRecord::Migration[6.1]
  def change
    create_table :sub25jects do |t|
      t.string :title25
      t.string :teacher25
      t.integer :user_id

      t.timestamps
    end
  end
end
