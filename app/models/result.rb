class Result < ActiveRecord::Base
  belongs_to :users
  belongs_to :question
  belongs_to :answers
  before_create :insert_question

  private
      def insert_question
        answer_id = self.answer_id
        if answer_id == nil
          answer_id = 6
        else
          question_id = Answer.find(answer_id).question_id
        end
        self.question_id = question_id

      end

end
