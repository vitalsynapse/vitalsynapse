class AddReviewToHealths < ActiveRecord::Migration
  def change
    add_column :healths, :review, :text
  end
end
