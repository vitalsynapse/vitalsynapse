class Blood < ActiveRecord::Base
  belongs_to :user
   mount_uploader :blood_file

end
