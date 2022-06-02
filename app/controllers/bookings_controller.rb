class BookingsController < ApplicationController

  def index

  end

  def show

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

  end

  private

  def booking_params
    params.require(:booking).permit(:started_at, :ended_at)
  end
end
