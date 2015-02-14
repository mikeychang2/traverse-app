class TripsController < ApplicationController

  def index
    trips = Trip.all
    render json: trips
  end

  def create
    p params
    trip = Trip.create(trips_params)
    render json: trip
  end

  def update
    # p params
    trip = Trip.find(params[:id])
    trip.update(trips_params)
    render json: trip
  end

  def destroy
    # p params
    trip = Trip.find(params[:id])
    trip.destroy
    render json: trip
  end

  private
  def trips_params
    params.require(:trip).permit(:title, :user_id)
  end

end

