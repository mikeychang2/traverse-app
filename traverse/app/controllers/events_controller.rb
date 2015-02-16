class EventsController < ApplicationController
  def index
    # user = @current_user
    # trips = Trip.where(user_id: user.id)
    #

    trip = Trip.find(params[:trip_id])
    events = trip.events.all
    render json: events
  end

  def create
    trip = Trip.find(params[:trip_id])
    # event = trip.events.create(events_params)
    event = trip.events.create(title: params[:title], content: params[:content], date: params[:date])
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
    trip = Trip.find(params[:trip_id])
    event = trip.events.find_by(id: params[:id])
    event.destroy
    render json: event
  end

  def tag
    p params
    tag_name = params[:name].downcase
    tag = Tag.find_by(name: tag_name)
    events_by_tag = tag.events.where(trip_id: params[:trip_id])

    render json: events_by_tag
# BLUEPRINT BEGIN
  # p params
  #   trip = Trip.find(params[:trip_id])
  #   tags = Tag.where(["trip_id = ? and name = ?", trip.id, params[:name]])

  #   event_ids = []
  #   tags.each do |tag|
  #     event_ids.push(EventsTags.find_by(tag_id: tag.id).event_id)
  #   end

  #   event_array = []
  #   event_ids.each do |event_id|
  #     event_array.push(Event.find(event_id))
  #   end
  #   render json: event_array
  end


  private
  def events_params
    params.require(:event).permit(:title, :date, :content, :trip_id)
  end

end
