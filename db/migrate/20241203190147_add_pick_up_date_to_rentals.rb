class AddPickUpDateToRentals < ActiveRecord::Migration[7.1]
  def change
    rename_column(:rentals, :date, :pickup_date)
  end
end
