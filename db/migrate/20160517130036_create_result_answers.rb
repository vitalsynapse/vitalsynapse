class CreateResultAnswers < ActiveRecord::Migration
  def change
    create_table :result_answers do |t|
      t.belongs_to :result, index: true, foreign_key: true
      t.integer :answer_id

      t.timestamps null: false
    end
  end
end
