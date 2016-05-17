class RemoveDetailFromHealths < ActiveRecord::Migration
  def change
    remove_column :healths, :details, :string
  end
end
