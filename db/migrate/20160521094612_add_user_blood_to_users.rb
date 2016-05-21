class AddUserBloodToUsers < ActiveRecord::Migration
  def change
    add_column :users, :user_blood, :string
  end
end
