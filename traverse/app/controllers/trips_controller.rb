class TripsController < ApplicationController

  def index
    trips = Trip.all
    return render json: trips
  end

  def create
    trip = Trip.create(title: params[:title])
    p '###' * 20 + 'trip'
    p trip
    p '###' * 20 + 'response'
    p response
    p '###' * 20 + 'response.class'
    p response.class
    # need to figure out creating trip using strong params
    # trip = Trip.create(trips_params[:title])
    return render json: trip
  end

  def update
    # p params
    trip = Trip.find(params[:id])
    trip.update(trips_params)
    return render json: trip
  end

  def destroy
    trip = Trip.find_by(id: params[:id])
    trip.destroy
    # redirect_to trips_path
    return render json: trip
  end

  private
    def trips_params
      params.require(:trip).permit(:title)
    end

end

