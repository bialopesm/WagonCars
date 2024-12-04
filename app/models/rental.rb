class Rental < ApplicationRecord
  belongs_to :car, dependent: :destroy
  belongs_to :user

  validates :pickup_date, :delivered_date, presence: true
end
