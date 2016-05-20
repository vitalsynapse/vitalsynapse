class AddTimeTakenToBmis < ActiveRecord::Migration
  def change
    add_column :bmis, :time_taken, :time
  end
end
