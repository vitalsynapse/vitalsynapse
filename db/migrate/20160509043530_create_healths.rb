class CreateHealths < ActiveRecord::Migration
  def change
    create_table :healths do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.string :subject
      t.text :details
      t.text :file

      t.timestamps null: false
    end
  end
end
