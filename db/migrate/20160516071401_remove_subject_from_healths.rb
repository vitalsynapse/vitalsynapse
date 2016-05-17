class RemoveSubjectFromHealths < ActiveRecord::Migration
  def change
    remove_column :healths, :subject, :string
  end
end
