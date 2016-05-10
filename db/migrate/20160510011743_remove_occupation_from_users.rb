class RemoveOccupationFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :occupation, :string
  end
end
