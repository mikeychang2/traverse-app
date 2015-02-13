class EventsController < ApplicationController
  def index
    trip = Trip.find(params[:trip_id])
    events = trip.events.all
    render json: events
  end

  def create
    trip = Trip.find(params[:trip_id])
    event = trip.events.create(params[:event])
    render json: event
  end

  def new
    event = Event.create()
    # are we going to update the new event??
  end

  def update
    event = Event.find(params[:id])
    updated_event = event.update(params[:event])
    render json: updated_event
  end

  def destroy
    event = Event.find(params[:id])
    event.destroy
  end
end
