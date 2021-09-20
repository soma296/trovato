class CreateSub14jects < ActiveRecord::Migration[6.1]
  def change
    create_table :sub14jects do |t|
      t.string :title14
      t.string :teacher14
      t.integer :user_id

      t.timestamps
    end
  end
end
