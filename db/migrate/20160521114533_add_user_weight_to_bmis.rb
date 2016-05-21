class AddUserWeightToBmis < ActiveRecord::Migration
  def change
    add_column :bmis, :user_weigh, :float
  end
end
