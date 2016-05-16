class Health < ActiveRecord::Base
  mount_uploader :file
  belongs_to :user
  belongs_to :record_category
end
