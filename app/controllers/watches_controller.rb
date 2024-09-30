class WatchesController < ApplicationController
  def index
    @watches = Watch.all
  end

  def show
    @watch = Watch.find(params[:watch_id])
  end 
  
  def create
    @watch = Watch.new(watch_params)

    if @watch.save
      redirect_to watches_path, notice: 'Watch successfully added!'
    else
      @brands = Brand.all  # Re-fetch brands if the form is re-rendered
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
    params.permit(:model, :bracelet, :movement, :case_material, :case_size, :crown_guard)
  end
end
