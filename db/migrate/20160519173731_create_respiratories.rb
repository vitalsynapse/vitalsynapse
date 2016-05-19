class CreateRespiratories < ActiveRecord::Migration
  def change
    create_table :respiratories do |t|
      t.date :date_taken
      t.time :time_taken
      t.integer :measurement
      t.integer :index

      t.timestamps null: false
    end
  end
end
