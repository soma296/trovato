class CreateTwohomes < ActiveRecord::Migration[6.1]
  def change
    create_table :twohomes do |t|

      t.timestamps
    end
  end
end
