class Pressure < ActiveRecord::Base
  belongs_to :user
  enum context: [:at_rest, :activity]

end
