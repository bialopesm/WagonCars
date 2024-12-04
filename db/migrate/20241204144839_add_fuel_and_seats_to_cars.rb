class AddFuelAndSeatsToCars < ActiveRecord::Migration[7.1]
  def change
    add_column :cars, :fuel, :string
    add_column :cars, :number_of_seats, :integer
  end
end
