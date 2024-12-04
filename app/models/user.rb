class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :cars
  has_many :rentals
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
