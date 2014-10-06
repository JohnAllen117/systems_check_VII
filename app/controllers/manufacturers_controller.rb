class ManufacturersController < ApplicationController
  def new
    @manufacturer = Manufacturer.new
  end

  def create
    @manufacturer = Manufacturer.new(manufacturer_params)

    if @manufacturer.save
      flash[:notice] = "Success"
      redirect_to root_path
    else
      flash[:notice] = "Review Problems Below"
      render :new
    end
  end

  private

  def manufacturer_params
    params.require(:manufacturer).permit(:name, :country)
  end
end
