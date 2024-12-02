class CarsController < ApplicationController
  def new
    @car = Car.new
  end

  def show
    @car = Car.find(params[:id])
  end

  def update
    @car = Car.find(params[:id])
    @car.update(car_params)
    redirect_to car_path(@car)
  end

  private

  def car_params
    params.require(:car).permit(:model, :year, :category, :location, :quality, :color, :rating, :picture)
  end

end
