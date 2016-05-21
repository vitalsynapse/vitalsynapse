class Pulse < ActiveRecord::Base
  belongs_to :user
  enum index: [:at_rest, :after_activity]

end
