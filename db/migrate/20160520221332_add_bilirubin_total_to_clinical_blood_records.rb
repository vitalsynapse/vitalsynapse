class AddBilirubinTotalToClinicalBloodRecords < ActiveRecord::Migration
  def change
    add_column :clinical_blood_records, :bilirubin_total, :float
  end
end
