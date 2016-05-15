class CreateBloods < ActiveRecord::Migration
  def change
    create_table :bloods do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.string :title
      t.string :blood_file

      t.timestamps null: false
    end
  end
end
