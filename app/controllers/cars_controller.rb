class CarsController < ApplicationController
<<<<<<< HEAD

  def index
    @cars = Car.all
  end

  def edit
=======
  def new
    @car = Car.new
  end

  def show
>>>>>>> master
    @car = Car.find(params[:id])
  end

  def update
    @car = Car.find(params[:id])
    @car.update(car_params)
    redirect_to car_path(@car)
  end

<<<<<<< HEAD
  def destroy
    @car = Car.find(params[:id])
    @car.destroy
    redirect_to cars_path, status: :see_other
  end

=======
>>>>>>> master
  private

  def car_params
    params.require(:car).permit(:model, :year, :category, :location, :quality, :color, :rating, :picture)
  end

end
