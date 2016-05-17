class Glucose < ActiveRecord::Base
  belongs_to :user
  enum context: [:pre_breakfast, :pre_lunch, :pre_dinner, :pre_bed]
end
