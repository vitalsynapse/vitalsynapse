class RemoveBloodTypeFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :blood_type, :string
  end
end
