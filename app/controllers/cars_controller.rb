class CarsController < ApplicationController
  def index

  end

  def show

  end

  def new

  end

  def create

  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def car_params
    params.require(:car).permit(:model, :price)
  end
end