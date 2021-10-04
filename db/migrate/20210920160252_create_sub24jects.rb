class CreateSub24jects < ActiveRecord::Migration[6.1]
  def change
    create_table :sub24jects do |t|
      t.string :title24
      t.string :teacher24
      t.integer :user_id

      t.timestamps
    end
  end
end
