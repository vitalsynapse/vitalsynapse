class AddBmiToUser < ActiveRecord::Migration
  def change
    add_column :users, :height, :float
    add_column :users, :weight, :float
  end
end
