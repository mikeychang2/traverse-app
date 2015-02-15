class TripsController < ApplicationController

  def index
    trips = Trip.all
    return render json: trips
  end

  def create
    trip = Trip.create(title: params[:title])
    return render json: trip
  end

  def update
    # p params
    trip = Trip.find(params[:id])
    trip.update(trips_params)
    return render json: trip
  end

  def destroy
    # p params
    trip = Trip.find(params[:id])
    trip.destroy
    return render json: trip
  end

  private
    def trip_params
      params.require(:trip).permit(:title)
    end

end

