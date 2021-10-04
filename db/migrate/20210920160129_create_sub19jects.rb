class CreateSub19jects < ActiveRecord::Migration[6.1]
  def change
    create_table :sub19jects do |t|
      t.string :title19
      t.string :teacher19
      t.integer :user_id

      t.timestamps
    end
  end
end
