class RemoveMaritalStatusFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :marital_status, :string
  end
end
