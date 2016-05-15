class AddUserIdToBmi < ActiveRecord::Migration
  def change
    add_reference :bmis, :user, index: true, foreign_key: true
  end
end
