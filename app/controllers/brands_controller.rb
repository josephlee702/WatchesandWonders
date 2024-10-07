class BrandsController < ApplicationController
  def index
    @brands = Brand.all
  end

  def new
    @brand = Brand.new
  end

  def create
    @brand = Brand.new(brand_params)

    if @brand.save
      redirect_to brands_path, notice: 'Brand successfully added!'
    else
      flash.now[:notice] = "Brand was not added successfully - try again."
      render :new
    end
  end

  private

  def brand_params
    params.require(:brand).permit(:name, :country, :photo)
  end
end