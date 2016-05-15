class RemoveRecordCategoryIdFromHealth < ActiveRecord::Migration
  def change
    remove_reference :healths, :record_category, index: true, foreign_key: true
  end
end
