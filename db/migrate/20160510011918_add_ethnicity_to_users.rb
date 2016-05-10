class AddEthnicityToUsers < ActiveRecord::Migration
  def change
    add_column :users, :ethnicity, :integer
  end
end
