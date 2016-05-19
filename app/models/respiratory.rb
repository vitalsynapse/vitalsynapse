class Respiratory < ActiveRecord::Base
  belongs_to :user
  enum index: [:at_rest, :activity]

end
