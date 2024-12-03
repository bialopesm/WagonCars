class CarsController < ApplicationController

  def index
    @cars = Car.all
  end

  def edit
    @car = Car.find(params[:id])
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    @car.user = current_user
    @car.picture.attach(params[:car][:picture])
    if @car.save
      redirect_to car_path(@car), notice: 'Car was successfully created.'
    else
      flash.now[:alert] = 'There was an error creating the car. Please try again.'
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @car = Car.find(params[:id])
  end

  def update
    @car = Car.find(params[:id])
    @car.update(car_params)
    @car.picture.attach(params[:car][:picture]) if params[:car][:picture].present?
    redirect_to car_path(@car)
  end

  def destroy
    @car = Car.find(params[:id])
    @car.destroy
    redirect_to cars_path, status: :see_other
  end

  private

  def car_params
    params.require(:car).permit(:model, :year, :category, :location, :quality, :color, :rating)
  end

end
