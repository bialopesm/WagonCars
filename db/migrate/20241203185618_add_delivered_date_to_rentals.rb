class AddDeliveredDateToRentals < ActiveRecord::Migration[7.1]
  def change
    add_column :rentals, :delivered_date, :date
  end
end
