class Rental < ApplicationRecord
  belongs_to :car
  belongs_to :user

  validates :pickup_date, :delivered_date, presence: true
  validate :pickup_date_and_delivered_date_must_be_in_future

  private

  def pickup_date_and_delivered_date_must_be_in_future
    if pickup_date.present? && pickup_date < Date.current
      errors.add(:pickup_date, "must be today or in the future")
    end

    if delivered_date.present? && delivered_date < Date.current
      errors.add(:delivered_date, "must be today or in the future")
    end
  end
end
