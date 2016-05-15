class CreateCtscans < ActiveRecord::Migration
  def change
    create_table :ctscans do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.string :title
      t.string :ctscan_file

      t.timestamps null: false
    end
  end
end
