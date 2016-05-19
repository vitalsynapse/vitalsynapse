class AddTimeTakenToGlucose < ActiveRecord::Migration
  def change
    add_column :glucoses, :time_taken, :time
  end
end
