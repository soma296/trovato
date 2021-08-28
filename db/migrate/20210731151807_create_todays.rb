class CreateTodays < ActiveRecord::Migration[6.1]
  def change
    create_table :todays do |t|

      t.timestamps
    end
  end
end
