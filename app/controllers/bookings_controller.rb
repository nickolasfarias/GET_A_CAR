class BookingsController < ApplicationController

  def index

  end

  def show

  end

  def new

  end

  def create

  end

  def destroy

  end

  private

  def bookings_params
    params.require(:bookings).permit(:availability, :started_at, :ended_at)
  end
end
