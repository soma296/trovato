class CreateSub18jects < ActiveRecord::Migration[6.1]
  def change
    create_table :sub18jects do |t|
      t.string :title18
      t.string :teacher18
      t.integer :user_id

      t.timestamps
    end
  end
end
