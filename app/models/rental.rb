class Rental < ApplicationRecord
  belongs_to :car, dependent: :destroy
  belongs_to :user
end
