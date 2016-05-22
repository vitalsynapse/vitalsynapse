class AddContextTwoToLungRates < ActiveRecord::Migration
  def change
    add_column :lung_rates, :context_two, :string
  end
end
