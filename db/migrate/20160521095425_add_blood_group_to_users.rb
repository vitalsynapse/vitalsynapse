class AddBloodGroupToUsers < ActiveRecord::Migration
  def change
    add_column :users, :blood_group, :string
  end
end
