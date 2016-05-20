class AddDateTakenToBmis < ActiveRecord::Migration
  def change
    add_column :bmis, :date_taken, :date
  end
end
