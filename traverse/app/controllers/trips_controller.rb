class TripsController < ApplicationController

  def index
    trips = Trip.all
    render json: trips
  end

  def update
    trip = Trip.find(params[:id])
    updated_trip = trip.update(params[:event])
    render json: updated_trip
  end

  def destroy
    trip = Trip.find(params[:id])
    trip.destroy
  end

end

