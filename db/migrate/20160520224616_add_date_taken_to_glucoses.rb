class AddDateTakenToGlucoses < ActiveRecord::Migration
  def change
    add_column :glucoses, :date_taken, :date
  end
end
