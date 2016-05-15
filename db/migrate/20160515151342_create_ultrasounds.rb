class CreateUltrasounds < ActiveRecord::Migration
  def change
    create_table :ultrasounds do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.string :title
      t.string :ultrasound_file

      t.timestamps null: false
    end
  end
end
