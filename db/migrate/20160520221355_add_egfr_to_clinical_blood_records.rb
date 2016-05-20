class AddEgfrToClinicalBloodRecords < ActiveRecord::Migration
  def change
    add_column :clinical_blood_records, :egfr, :float
  end
end
