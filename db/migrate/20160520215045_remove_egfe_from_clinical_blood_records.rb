class RemoveEgfeFromClinicalBloodRecords < ActiveRecord::Migration
  def change
    remove_column :clinical_blood_records, :egfe, :float
  end
end
