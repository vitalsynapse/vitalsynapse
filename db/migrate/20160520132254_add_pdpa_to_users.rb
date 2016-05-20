class AddPdpaToUsers < ActiveRecord::Migration
  def change
    add_column :users, :pdpa, :boolean
  end
end
