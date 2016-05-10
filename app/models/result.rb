class Result < ActiveRecord::Base
  belongs_to :survey_record
  belongs_to :question
  
end
