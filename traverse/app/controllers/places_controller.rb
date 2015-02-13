class PlacesController < ApplicationController
  def create
    p params
    event = Event.find(params[:event_id])
    place = Place.create(places_params)
    place.update(event_id: event.id)
    render json: place
  end

  def destroy
    place = Place.find(params[:id])
    place.destroy
    render json: place
  end

 private
  def places_params
    params.require(:place).permit(:yelp_link, :address, :name, :photo_url, :event_id)
  end
end

