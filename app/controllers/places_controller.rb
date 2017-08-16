class PlacesController < ApplicationController
  #uncomment below if this controller can be used only by logged in users
  #before_action :authenticate_user!

  def new
    @place = Place.new
  end
  def edit
    @place = Place.find(params[:id])
  end
  def index
    @places = current_user.places
  end
  def create
    @place = Place.new(place_params)
    @place.user = current_user
    if @place.save
      redirect_to places_path
    else
      render 'new'
    end
  end
  def update
    @place = Place.find(params[:id])

    if @place.update(place_params)
      redirect_to places_path
    else
      render 'edit'
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
      params.require(:place).permit(:title, :address, :term, :availableFrom, :availableTo)
    end
end

# Google maps API key: AIzaSyBPrmEuwYwMU-X-G5sw6NE8GKXow_HJELs
# generate model Place title:string address:string alias:string latitude:number longitude:number
