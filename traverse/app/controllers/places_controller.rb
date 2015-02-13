class PlacesController < ApplicationController
  def create
    event = Event.find(params[:event_id])
    place = event.places.create(places_params)
    render json: place
  end

  def destroy
    place = Place.find(params[:id])
    place.destroy
  end

 private
  def places_params
    params.require(:place).permit(:yelp_link, :address, :name, :photo_url, :event_id)
  end
end
