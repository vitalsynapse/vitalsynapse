class AddUserIdToRespiratory < ActiveRecord::Migration
  def change
    add_reference :respiratories, :user, index: true, foreign_key: true
  end
end
