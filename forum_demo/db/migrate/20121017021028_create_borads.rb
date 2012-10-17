class CreateBorads < ActiveRecord::Migration
  def change
    create_table :borads do |t|
      t.string :name

      t.timestamps
    end
  end
end
