class CreateSub4jects < ActiveRecord::Migration[6.1]
  def change
    create_table :sub4jects do |t|
      t.string :title4
      t.string :teacher4
      t.integer :user_id

      t.timestamps
    end
  end
end
