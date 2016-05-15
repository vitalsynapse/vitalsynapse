class CreateXrays < ActiveRecord::Migration
  def change
    create_table :xrays do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.string :title
      t.string :xray_file

      t.timestamps null: false
    end
  end
end
