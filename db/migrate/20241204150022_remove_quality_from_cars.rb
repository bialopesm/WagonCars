class RemoveQualityFromCars < ActiveRecord::Migration[7.1]
  def change
    remove_column :cars, :quality, :string
  end
end
