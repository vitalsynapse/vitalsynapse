class CreateRecordCategories < ActiveRecord::Migration
  def change
    create_table :record_categories do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
