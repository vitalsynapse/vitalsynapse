class AddClinicNameToClinicRecord < ActiveRecord::Migration
  def change
    add_column :clinic_records, :clinic_name, :string
  end
end
