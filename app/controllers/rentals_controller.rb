class RentalsController < ApplicationController

  def index
    @rentals = Rental.all
  end

  def new
    @car = Car.find(params[:car_id])
    @rental = Rental.new
  end

  def show
    @rental = Rental.find(params[:id])
  end

  def create
    @car = Car.find(params[:car_id])
    @rental = @car.rentals.build(rental_params)
    @rental.user = current_user
    @rental.car = @car

    if @rental.save
      redirect_to user_path(current_user), notice: 'Rental created.'
    else
      flash.now[:alert] = 'Try another date for this car!'
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @rental = Rental.find(params[:id])
    @rental.destroy
    redirect_to user_path(current_user), notice: 'Rental deleted.'
  end

  private

  def rental_params
    params.require(:rental).permit(:pickup_date, :delivered_date)
  end
end
