class CreateUrines < ActiveRecord::Migration
  def change
    create_table :urines do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.string :title
      t.string :urine_file

      t.timestamps null: false
    end
  end
end
