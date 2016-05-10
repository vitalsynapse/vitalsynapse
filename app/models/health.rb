class Health < ActiveRecord::Base
  mount_uploader :file
  belongs_to :user
end
