class SurveyRecord < ActiveRecord::Base
  belongs_to :user
  has_many :results
  has_many :questions, :through => :results
  has_many :answers, :through => :results
  accepts_nested_attributes_for :results
end
