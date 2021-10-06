class CreateSub23jects < ActiveRecord::Migration[6.1]
  def change
    create_table :sub23jects do |t|
      t.string :title23
      t.string :teacher23
      t.integer :user_id

      t.timestamps
    end
  end
end
