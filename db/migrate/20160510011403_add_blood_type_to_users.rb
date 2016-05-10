class AddBloodTypeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :blood_type, :integer
  end
end
