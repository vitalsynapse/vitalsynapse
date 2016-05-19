class CreatePulses < ActiveRecord::Migration
  def change
    create_table :pulses do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.date :date_taken
      t.time :time_taken
      t.integer :measurement
      t.integer :index

      t.timestamps null: false
    end
  end
end
