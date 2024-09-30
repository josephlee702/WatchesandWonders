class WatchesController < ApplicationController
  def index
    @watches = Watch.all
  end

  def show
    @watch = Watch.find(params[:watch_id])
  end 

  def new
    @watch = Watch.new
    @brands = Brand.all
  end
  
  def create
    @watch = Watch.new(watch_params)
    
    if @watch.save
      redirect_to watches_path, notice: 'Watch successfully added!'
    else
      @brands = Brand.all
      flash.now[:notice] = "Watch was not added successfully - try again."
      render :new
    end
  end
  
  def edit
    @watch = Watch.find(params[:watch_id])
  end
  
  def update
    @watch = Watch.find(params[:watch_id])
    @watch.update(watch_params)
    redirect_to "/watches/#{@watch.id}"
  end

  def destroy
    Watch.find(params[:watch_id]).destroy
    redirect_to "/watches"
  end

  private

  def watch_params
    params.require(:watch).permit(:brand_id, :reference_number, :model, :price, :movement, :year_of_production, :case_material, :case_diameter, :description, :bracelet)
  end
end
