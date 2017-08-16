class WelcomeController < ApplicationController
  def index
    @places = if params[:term]
        Place.where('address LIKE ?', "%#{params[:term]}%")
      else
        Place.all
    end
  end
end
