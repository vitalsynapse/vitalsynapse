class AddUserIdToSurveyRecords < ActiveRecord::Migration
  def change
    add_reference :survey_records, :user, index: true, foreign_key: true
  end
end
