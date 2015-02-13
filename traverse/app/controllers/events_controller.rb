class EventsController < ApplicationController
  def index
    trip = Trip.find(params[:trip_id])
    events = trip.events.all
    render json: events
  end

  def create
    trip = Trip.find(params[:trip_id])
    event = trip.events.create(event_params)
    render json: event
  end

  def new
    event = Event.create()
    # are we going to update the new event??
  end

  def update
    event = Event.find(params[:id])
    updated_event = event.update(event_params)
    render json: updated_event
  end

  def destroy
    event = Event.find(params[:id])
    event.destroy
  end

  private
  def events_params
    params.require(:event).permit(:title, :date, :content, :trip_id)
  end

end
