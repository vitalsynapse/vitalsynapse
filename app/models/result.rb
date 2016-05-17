class Result < ActiveRecord::Base
  belongs_to :users
  belongs_to :question
  belongs_to :answers
  has_many :result_answers
  accepts_nested_attributes_for :result_answers, :reject_if => :all_blank, :allow_destroy => true
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
