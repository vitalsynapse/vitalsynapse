class CreateScopes < ActiveRecord::Migration
  def change
    create_table :scopes do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.string :title
      t.string :scope_file

      t.timestamps null: false
    end
  end
end
