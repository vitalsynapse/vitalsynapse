class AddProteinToClinicalBloodRecords < ActiveRecord::Migration
  def change
    add_column :clinical_blood_records, :protein, :integer
  end
end
