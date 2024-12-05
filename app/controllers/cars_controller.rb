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
      puts @car.errors.full_messages
      flash.now[:alert] = 'There was an error creating the car. Please try again.'
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @car = Car.find(params[:id])
  end

  def update
    @car = Car.find(params[:id])
    @car.picture.attach(params[:car][:picture]) if params[:car][:picture].present?
    if @car.update(car_params)
      redirect_to user_path(current_user), notice: 'Car was successfully updated.'
    else
      flash.now[:alert] = 'There was an error updating the car. Please try again.'
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @car = Car.find(params[:id])
    @car.destroy
    redirect_to user_path(current_user), status: :see_other
  end

  private

  def car_params
    params.require(:car).permit(:model, :year, :category, :location, :color, :fuel, :number_of_seats, :description, :picture, :price_day, :rating)
  end

end
