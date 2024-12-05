class UsersController < ApplicationController
  def show
    @user = current_user
    @cars = @user.cars.includes(:rentals)
  end
end
