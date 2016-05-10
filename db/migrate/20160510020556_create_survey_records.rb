class CreateSurveyRecords < ActiveRecord::Migration
  def change
    create_table :survey_records do |t|
      t.text :subject

      t.timestamps null: false
    end
  end
end
