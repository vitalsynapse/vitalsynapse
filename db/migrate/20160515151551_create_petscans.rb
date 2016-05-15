class CreatePetscans < ActiveRecord::Migration
  def change
    create_table :petscans do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.string :title
      t.string :petscan_file

      t.timestamps null: false
    end
  end
end
