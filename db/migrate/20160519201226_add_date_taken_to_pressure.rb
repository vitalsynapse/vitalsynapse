class AddDateTakenToPressure < ActiveRecord::Migration
  def change
    add_column :pressures, :date_taken, :date
    add_column :pressures, :time_taken, :time
  end
end
