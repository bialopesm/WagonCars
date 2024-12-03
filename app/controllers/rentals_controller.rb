class RentalsController < ApplicationController
  def new
    @car = Car.find(params[:car_id])
    @rental = Rental.new
  end

  def show

  end

  def create
    @car = Car.find(params[:car_id])
    @rental = @car.rentals.build(rental_params)
    @rental.user = current_user
    @rental.car = @car

    if @rental.save!
      redirect_to car_path(@car), notice: 'Rental created.'
    else
      render :new, alert: 'Error.'
    end
  end

  def destroy
    @rental = Rental.find(params[:id])
    @rental.destroy
    redirect_to cars_path, notice: 'Rental deleted.'
  end

  private

  def rental_params
    params.require(:rental).permit(:date)
  end
end
