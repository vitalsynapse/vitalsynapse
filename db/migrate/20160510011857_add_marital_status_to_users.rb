class AddMaritalStatusToUsers < ActiveRecord::Migration
  def change
    add_column :users, :marital_status, :integer
  end
end
