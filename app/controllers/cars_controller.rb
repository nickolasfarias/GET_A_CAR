class CarsController < ApplicationController
  def index

  end

  def show
    @car = Car.find(params[:id])
  end

  def new

  end

  def create

  end

  def edit
    @car = Car.find(params[:id])
  end

  def update
    @car = Car.find(params[:id])
    @car.update(car_params)

    redirect_to car_path(@car)
  end

  def destroy

  end

  private

  def car_params
    params.require(:car).permit(:model, :price, :fuel, :consumption, :seats, :doors, :description, :address)
  end
end
