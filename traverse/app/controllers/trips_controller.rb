class TripsController < ApplicationController

  def index
    user = @current_user
    trips = Trip.where(user_id: user.id)
    render json: trips
  end

  def create
    user = @current_user
    trip = user.trips.create(trips_params)
    render json: trip
  end

  def update
    trip = Trip.find(params[:id])
    trip.update(trips_params)
    render json: trip
  end

  def destroy
    trip = Trip.find(params[:id])
    trip.destroy
    render json: trip
  end

  private
  def trips_params
    params.require(:trip).permit(:title, :user_id)
  end

end

