class Ultrasound < ActiveRecord::Base
  belongs_to :user
  mount_uploader :ultrasound_file
end
