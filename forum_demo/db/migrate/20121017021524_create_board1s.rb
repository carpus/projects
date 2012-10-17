class CreateBoard1s < ActiveRecord::Migration
  def change
    create_table :board1s do |t|

      t.timestamps
    end
  end
end
