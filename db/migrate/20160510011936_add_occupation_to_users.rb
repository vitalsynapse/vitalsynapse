class AddOccupationToUsers < ActiveRecord::Migration
  def change
    add_column :users, :occupation, :integer
  end
end
