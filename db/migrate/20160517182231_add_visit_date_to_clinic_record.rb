class AddVisitDateToClinicRecord < ActiveRecord::Migration
  def change
    add_column :clinic_records, :visit_date, :date
  end
end
