class Xray < ActiveRecord::Base
  belongs_to :user
  mount_uploader :xray_file
end
