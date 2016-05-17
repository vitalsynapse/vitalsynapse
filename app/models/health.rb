class Health < ActiveRecord::Base
  mount_uploader :file
  belongs_to :user
  belongs_to :record_category

  def record_name
    name = RecordCategory.find(self.record_category_id).name
    name
  end
end
