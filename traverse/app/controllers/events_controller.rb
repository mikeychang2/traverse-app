class EventsController < ApplicationController
  def index
    # user = @current_user
    # trips = Trip.where(user_id: user.id)

    trip = Trip.find(params[:trip_id])
    events = trip.events.all

    render json: events
  end

  def all_trip_events
    trip = Trip.find(params[:trip_id])
    events = trip.events.all

    events_and_photos = []
    trip.events.each do |entry|
      array_events_photos = [entry,entry.photos]
      events_and_photos.push(array_events_photos)
    end
    render json: events_and_photos
  end

  def create
    trip = Trip.find(params[:trip_id])
    # event = trip.events.create(events_params)
    # event = trip.events.create(title: params[:title], content: params[:content], date: params[:date])
    event = trip.events.create()

    render json: event
  end

  def new
    event = Event.create()
    # are we going to update the new event??
  end

  def update
    event = Event.find(params[:id])
    event.update(title: params[:title], content: params[:content], date: params[:date])
    render json: event
  end

  def destroy
    trip = Trip.find(params[:trip_id])
    event = trip.events.find_by(id: params[:id])
    event.destroy
    render json: event
  end

  def tag
    # returns events with a specific tag name
    p '###' * 25 + 'Get Events By Tag'
    p params
    # tag_name = params[:name].downcase
    tag = Tag.find(params[:tag_id])
    events_by_tag = tag.events.where(trip_id: params[:trip_id])

    render json: events_by_tag
  end

  def tags_for_one_event
    event = Event.find(params[:event_id])
    joins = EventTag.where(event_id: event.id) #returns array
    tag_ids = joins.map { |entry| entry.tag_id}
    tag_objs = tag_ids.map{ |id| Tag.find(id) } #return array of objs
    return render json: tag_objs
  end

  def show
    # trip = Trip.find(params[:trip_id])
    event = Event.find(params[:id])

    render json: event
  end



  private
  def events_params
    params.require(:event).permit(:title, :date, :content, :trip_id)
  end

end
