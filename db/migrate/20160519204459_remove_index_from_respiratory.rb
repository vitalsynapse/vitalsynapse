class RemoveIndexFromRespiratory < ActiveRecord::Migration
  def change
    remove_column :respiratories, :index, :integer
  end
end
