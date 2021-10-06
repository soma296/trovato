class CreateTwotasks < ActiveRecord::Migration[6.1]
  def change
    create_table :twotasks do |t|

      t.timestamps
    end
  end
end
