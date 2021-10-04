class CreateSub21jects < ActiveRecord::Migration[6.1]
  def change
    create_table :sub21jects do |t|
      t.string :title21
      t.string :teacher21
      t.integer :user_id

      t.timestamps
    end
  end
end
