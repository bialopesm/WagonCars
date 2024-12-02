class CreateCars < ActiveRecord::Migration[7.1]
  def change
    create_table :cars do |t|
      t.string :model
      t.integer :year
      t.string :category
      t.string :location
      t.string :quality
      t.string :color
      t.integer :rating
      t.string :picture
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
