class CreateBmis < ActiveRecord::Migration
  def change
    create_table :bmis do |t|
      t.integer :height
      t.integer :weight
      t.float :bodymassindex
      t.timestamps null: false
    end
  end
end
