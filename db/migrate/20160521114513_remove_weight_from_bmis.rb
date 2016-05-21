class RemoveWeightFromBmis < ActiveRecord::Migration
  def change
    remove_column :bmis, :weight, :integer
  end
end
