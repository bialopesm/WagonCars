class Car < ApplicationRecord
  belongs_to :user
  has_many :rentals, dependent: :destroy
  has_one_attached :picture

  CATEGORIES = ['Compact', 'Classic','Minicompact', 'Midsize', 'Large', 'Minivan', 'Small SUV', 'SUV']
  FUELS = ['Gasoline', 'Alcohol', 'Diesel', 'Biodiesel', 'Natural gas', 'Electric', 'Hydrogen', 'Hybrid']

  validates :model, :year, :category, :location, :color, :fuel, :number_of_seats, :price_day, :description, presence: true

  validates :year, numericality: {
    greater_than_or_equal_to: 1900,
    less_than_or_equal_to: -> { Date.current.year }
  }

  validates :description, length: { maximum: 50 }

  validates :price_day, numericality: { greater_than_or_equal_to: 0 }

  validates :number_of_seats, numericality: { only_integer: true, greater_than: 0 }

  geocoded_by :location
  after_validation :geocode, if: ->(obj) { obj.will_save_change_to_location? && (obj.latitude.blank? || obj.longitude.blank?) }

  def unavailable_dates
    rentals.pluck(:pickup_date, :delivered_date).map do |range|
      { from: range[0], to: range[1] }
    end
  end
end
