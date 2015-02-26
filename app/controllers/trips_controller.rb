class TripsController < ApplicationController

  def index
    user = @current_user
    trips = Trip.where(user_id: user.id)
    return render json: trips
  end

  def create
    user = @current_user
    trip = user.trips.create(title: params[:title])

    return render json: trip
  end

  def update
    trip = Trip.find(params[:id])
    trip.update(trips_params)

    return render json: trip
  end

  def destroy
    trip = Trip.find_by(id: params[:id])
    trip.destroy

    return render json: trip
  end

  def map
    user = @current_user
    trip = Trip.find(params[:trip_id])
    trip_events = trip.events
    places = []
    trip_events.each do |event|
      if event.place != nil && event.place.coordinates != nil
        places.push(event.place)
      end
    end
    return render json: places
  end

  private
    def trips_params
      params.require(:trip).permit(:title)
    end

end

