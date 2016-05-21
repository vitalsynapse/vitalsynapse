class RemoveIndexFromPulse < ActiveRecord::Migration
  def change
    remove_column :pulses, :index, :integer
  end
end
