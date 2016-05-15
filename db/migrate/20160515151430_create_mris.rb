class CreateMris < ActiveRecord::Migration
  def change
    create_table :mris do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.string :title
      t.string :mri_file

      t.timestamps null: false
    end
  end
end
