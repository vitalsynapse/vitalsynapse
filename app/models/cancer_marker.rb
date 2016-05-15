class CancerMarker < ActiveRecord::Base
  belongs_to :user
  mount_uploader :cancer_file
end
