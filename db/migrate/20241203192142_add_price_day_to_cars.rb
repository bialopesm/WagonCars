class AddPriceDayToCars < ActiveRecord::Migration[7.1]
  def change
    add_column :cars, :price_day, :integer
  end
end
