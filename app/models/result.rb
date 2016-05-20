class Result < ActiveRecord::Base
  belongs_to :users
  belongs_to :question
  belongs_to :answers
  after_create :insert_question

  private
      def insert_question
        answer_id = self.answer_id
        if answer_id == nil
          question_id = 1
        else
          question_id = Answer.find(answer_id).question_id
        end
        question = question_id
        self.question_id = question
        save
      end

end
