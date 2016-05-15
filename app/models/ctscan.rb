class Ctscan < ActiveRecord::Base
  belongs_to :user
  mount_uploader :ctscan_file
end
