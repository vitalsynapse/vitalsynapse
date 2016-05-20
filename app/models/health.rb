class Health < ActiveRecord::Base
  mount_uploader :file
  belongs_to :user
  belongs_to :record_category

  def record_name
    name = RecordCategory.find(self.record_category_id).name
    name
  end

  def record_image
    if self.record_category_id == 1
      "blood.png"
      elsif self.record_category_id == 2
        "urine.png"
      elsif self.record_category_id == 3
        "xray.png"
      elsif self.record_category_id == 4
        "cancermarker.png"
      elsif self.record_category_id == 5
        "scopes.png"
      elsif  self.record_category_id == 6
        "ultrasound.png"
      elsif self.record_category_id == 7
        "ctscan.png"
      elsif self.record_category_id == 8
        "mri.png"
      elsif self.record_category_id == 9
        "petscan.png"
      else self.record_category_id == 10
        "others.png"
      
    end
  end
end
