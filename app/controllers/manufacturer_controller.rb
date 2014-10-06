class ManufacturerController < ApplicationController
  def new
    @manufacturer = Manufacturer.new
  end

  def create
    @manufacturer = Manufacturer.new(manufacturer_params)

    if @manufacturer.save
      flash[:notice] = "Sucess"
      redirect_to root_path
    else
      flash[:notice] = "Review Problems Below"
      render :new
    end
  end
end
