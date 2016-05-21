class RemoveHeightFromBmis < ActiveRecord::Migration
  def change
    remove_column :bmis, :height, :integer
  end
end
