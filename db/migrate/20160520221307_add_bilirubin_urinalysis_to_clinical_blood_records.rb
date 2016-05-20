class AddBilirubinUrinalysisToClinicalBloodRecords < ActiveRecord::Migration
  def change
    add_column :clinical_blood_records, :bilirubin_urinalysis, :float
  end
end
