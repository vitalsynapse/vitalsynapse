class CreateClinicRecords < ActiveRecord::Migration
  def change
    create_table :clinic_records do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.text :problem
      t.text :diagnosis
      t.text :treatment

      t.timestamps null: false
    end
  end
end
