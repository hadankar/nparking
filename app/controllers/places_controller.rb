class PlacesController < ApplicationController
  def new
    @place = Place.new
  end
  def index
    @places = Place.all
  end
  def create
    @place = Place.new(place_params)
    if @place.save
      redirect_to places_path
    else
      render 'new'
    end
  end
  def show
    @place = Place.find(params[:id])
  end
  def destroy
    @place = Place.find(params[:id])
    @place.destroy

    redirect_to places_path
  end
  private
    def place_params
      params.require(:place).permit(:title, :alias, :address)
    end
end

# Google maps API key: AIzaSyBPrmEuwYwMU-X-G5sw6NE8GKXow_HJELs
# generate model Place title:string address:string alias:string latitude:number longitude:number
