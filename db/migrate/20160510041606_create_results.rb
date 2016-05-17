class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.belongs_to :question, index: true, foreign_key: true
      t.text :answer

      t.timestamps null: false
    end
  end
end
