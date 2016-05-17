class AddVisitTimeToClinicRecord < ActiveRecord::Migration
  def change
    add_column :clinic_records, :visit_time, :time
  end
end
