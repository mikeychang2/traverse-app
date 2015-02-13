class PlacesController < ApplicationController
  def create
    event = Event.find(params[:event_id])
    place = event.places.create(params[:place])
    render json: place
  end

  def destroy
    place = Place.find(params[:id])
    place.destroy
  end
end
