class Car < ApplicationRecord
  belongs_to :user

  validates :model, :year, :category, :location, :quality, :color, :picture, presence: true
  validates :year, numericality: {
    greater_than_or_equal_to: 1900,
    less_than_or_equal_to: -> { Date.current.year }
  }
end
