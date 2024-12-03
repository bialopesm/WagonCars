class Car < ApplicationRecord
  belongs_to :user
  has_many :rentals
  has_one_attached :picture
  CATEGORIES = ['Compact', 'Minicompact', 'Midsize', 'Large', 'Minivan', 'Small SUV', 'SUV']

  validates :model, :year, :category, :location, :quality, :color, :picture, presence: true
  validates :year, numericality: {
    greater_than_or_equal_to: 1900,
    less_than_or_equal_to: -> { Date.current.year }
  }

end
