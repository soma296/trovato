class CreateSub1jects < ActiveRecord::Migration[6.1]
  def change
    create_table :sub1jects do |t|
      t.string :title1
      t.string :teather1

      t.timestamps
    end
  end
end
