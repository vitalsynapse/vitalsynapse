class Glucose < ActiveRecord::Base
  belongs_to :user
  enum context: [:random_blood_sugar, :fasting_blood_sugar]
end
