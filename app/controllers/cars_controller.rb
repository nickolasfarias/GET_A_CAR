class CarsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  def index
    if params[:query].present?
      @cars = Car.where("model ILIKE ?", "%#{params[:query]}%")
    else
      @cars = Car.where.not(user: current_user)
    end
  end

  def show
    @car = Car.find(params[:id])
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    @car.user = current_user
    if @car.save
      redirect_to user_path(current_user)
    else
      render :new
    end
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
    @car = Car.find(params[:id])
    @car.destroy

    redirect_to user_path(current_user)
  end

  private

  def car_params
    params.require(:car).permit(:model, :price, :consumption, :seats, :doors, :description, :fuel, :address, :photo)
  end
end
