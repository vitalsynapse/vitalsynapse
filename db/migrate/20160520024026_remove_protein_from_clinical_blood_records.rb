class RemoveProteinFromClinicalBloodRecords < ActiveRecord::Migration
  def change
    remove_column :clinical_blood_records, :protein, :integer
  end
end
