class AddContextToPulse < ActiveRecord::Migration
  def change
    add_column :pulses, :context, :integer
  end
end
