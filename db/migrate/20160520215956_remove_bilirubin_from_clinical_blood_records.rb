class RemoveBilirubinFromClinicalBloodRecords < ActiveRecord::Migration
  def change
    remove_column :clinical_blood_records, :bilirubin, :text
  end
end
