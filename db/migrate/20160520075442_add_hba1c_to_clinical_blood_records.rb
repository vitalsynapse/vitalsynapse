class AddHba1cToClinicalBloodRecords < ActiveRecord::Migration
  def change
    add_column :clinical_blood_records, :hba1c, :float
  end
end
