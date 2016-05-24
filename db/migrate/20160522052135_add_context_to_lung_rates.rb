class AddContextToLungRates < ActiveRecord::Migration
  def change
    add_column :lung_rates, :context, :integer
  end
end
