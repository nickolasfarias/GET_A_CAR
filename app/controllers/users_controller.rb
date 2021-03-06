class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @cars = Car.all
    @cars_from_owner = @cars.where(user_id: @user.id)
    @bookings = Booking.where(user: current_user)
  end
end
