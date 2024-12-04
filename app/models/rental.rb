class Rental < ApplicationRecord
  belongs_to :car
  belongs_to :user

  validates :pickup_date, :delivered_date, presence: true
end
