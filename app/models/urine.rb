class Urine < ActiveRecord::Base
  belongs_to :user
  mount_uploader :urine_file
end
