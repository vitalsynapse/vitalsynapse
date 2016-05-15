class CreatePressures < ActiveRecord::Migration
  def change
    create_table :pressures do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.float :sbp
      t.float :dpb
      t.integer :context

      t.timestamps null: false
    end
  end
end
