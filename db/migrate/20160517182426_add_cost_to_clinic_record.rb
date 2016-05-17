class AddCostToClinicRecord < ActiveRecord::Migration
  def change
    add_column :clinic_records, :cost, :float
  end
end
