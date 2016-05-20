class AddContextToRespiratory < ActiveRecord::Migration
  def change
    add_column :respiratories, :context, :integer
  end
end
