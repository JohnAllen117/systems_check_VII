class CarsController < ApplicationController
  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)

    if @car.save
      flash[:notice] = "Success"
      redirect_to root_path
    else
      flash[:notice] = "Review Problems Below"
      render :new
    end
  end

  def index
    @cars = Car.all
  end

  private

  def car_params
    params.require(:car).permit(:color, :year, :mileage, :manufacturer_id, :description)
  end
end
