class CreateSub27jects < ActiveRecord::Migration[6.1]
  def change
    create_table :sub27jects do |t|
      t.string :title27
      t.string :teacher27
      t.integer :user_id

      t.timestamps
    end
  end
end
