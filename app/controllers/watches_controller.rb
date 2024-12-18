class WatchesController < ApplicationController
  def index
    @watches = Watch.all
    #API seems to be under maintenence...reached out to see if it will be up anytime soon.
    # api_client = WatchApiClient.new
    # @data = api_client.fetch_watches
    # require 'pry'; binding.pry

    # if @watches[:error]
    #   flash[:error] = "Error fetching data: #{@watches[:message]}"
    # end
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
  params.require(:watch).permit(:reference_number, :model, :price, :movement, :year_of_production, :case_material, :case_diameter, :bracelet, :description, :brand_id, :photo)
  end
end
