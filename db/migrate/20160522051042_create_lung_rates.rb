class CreateLungRates < ActiveRecord::Migration
  def change
    create_table :lung_rates do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.integer :rate
      t.date :date_taken
      t.time :time_taken

      t.timestamps null: false
    end
  end
end
