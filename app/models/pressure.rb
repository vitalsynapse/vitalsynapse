class Pressure < ActiveRecord::Base
  belongs_to :user
  enum context: [:at_rest, :after_activity]

end
