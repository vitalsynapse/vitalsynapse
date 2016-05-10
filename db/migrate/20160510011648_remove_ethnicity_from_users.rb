class RemoveEthnicityFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :ethnicity, :string
  end
end
