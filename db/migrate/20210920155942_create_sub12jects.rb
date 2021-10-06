class CreateSub12jects < ActiveRecord::Migration[6.1]
  def change
    create_table :sub12jects do |t|
      t.string :title12
      t.string :teacher12
      t.integer :user_id

      t.timestamps
    end
  end
end
