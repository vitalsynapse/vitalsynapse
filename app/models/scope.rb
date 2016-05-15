class Scope < ActiveRecord::Base
  belongs_to :user
  mount_uploader :scope_file
end
