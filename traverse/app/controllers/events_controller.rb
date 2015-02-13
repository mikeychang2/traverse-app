class EventsController < ApplicationController
  def index
    trip = Trip.find(params[:trip_id])
    events = trip.events.all
    render json: events
  end

  def create
    p params
    trip = Trip.find(params[:trip_id])
    event = trip.events.create(events_params)
    render json: event
  end

  def new
    event = Event.create()
    # are we going to update the new event??
  end

  def update
    event = Event.find(params[:id])
    event.update(events_params)
    render json: event
  end

  def destroy
    event = Event.find(params[:id])
    event.destroy
    render json: event
  end

  private
  def events_params
    params.require(:event).permit(:title, :date, :content, :trip_id)
  end

end
