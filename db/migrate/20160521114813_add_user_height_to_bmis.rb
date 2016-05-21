class AddUserHeightToBmis < ActiveRecord::Migration
  def change
    add_column :bmis, :height, :float
  end
end
