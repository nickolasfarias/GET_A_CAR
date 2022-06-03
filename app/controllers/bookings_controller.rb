class BookingsController < ApplicationController

  def index

  end

  def show
    @car = Car.find(params[:car_id])
    @booking = Booking.find(params[:id])
  end

  def new
    @car = Car.find(params[:car_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.car = Car.find(params[:car_id])
    @booking.user = current_user
    if @booking.save
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy

    redirect_to user_path(current_user)
  end


  private

  def booking_params
    params.require(:booking).permit(:started_at, :ended_at)
  end
end
