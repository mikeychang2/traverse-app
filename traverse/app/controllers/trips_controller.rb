class TripsController < ApplicationController

  def index
    trips = Trip.all
    render json: trips
  end

  def create
    trip = Trip.create(trips_params)
    render json: trip
  end

  def update
    trip = Trip.find(params[:id])
    updated_trip = trip.update(trips_params)
    render json: updated_trip
  end

  def destroy
    trip = Trip.find(params[:id])
    trip.destroy
  end

  private
  def trips_params
    params.require(:trip).permit(:title)
  end

end

