class AddRecordCategoryIdToHealth < ActiveRecord::Migration
  def change
    add_reference :healths, :record_category, index: true, foreign_key: true
  end
end
