class Petscan < ActiveRecord::Base
  belongs_to :user
  mount_uploader :petscan_file
end
