class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.date :deadline
      t.string :title
      t.string :content
      t.string :details
      t.boolean :done

      t.timestamps
    end
  end
end
