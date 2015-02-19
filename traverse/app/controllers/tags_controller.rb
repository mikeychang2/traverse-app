class TagsController < ApplicationController

 def index
  # returns all tags for one trip
  trip = Trip.find(params[:trip_id])
  events_tags = EventTag.where(trip_id: trip.id)
  tag_ids = events_tags.map{|event| event.tag_id}
  tags = tag_ids.map{|id| Tag.find(id)}
  tags.uniq!
  return render json: tags
 end

  def create
    # p params
    event = Event.find(params[:event_id])
    trip_id = event.trip_id
    tag_name = params[:name]
    tag_name.downcase
    input_tag = Tag.find_by(name: tag_name)

    tag = Tag.new(name: tag_name)

    if tag.save
      EventTag.create(event_id: event.id, tag_id: tag.id, trip_id: trip_id)
    else
      EventTag.create(event_id: event.id, tag_id: input_tag.id, trip_id: trip_id)
      tag = input_tag
    end

    # if input_tag
    #   EventsTag.create(event_id: event.id, tag_id: input_tag.id, trip_id: trip_id)
    #   tag = input_tag
    # else
    #   tag = Tag.create(name: tags_params[:name])
    #   EventsTag.create(event_id: event.id, tag_id: tag.id, trip_id: trip_id)
    # end

    render json: tag

  end

  def destroy
    tag = Tag.find(params[:id])
    tag.destroy
    render json: tag
  end


  # def event_tags

  #   # find the tag name in the tag table
  #   tag = Tag.where(name: params[:name])
  #   # find the id of that tag in the tag table
  #   tag_id = tag.first.id
  #   # find that same tag id in the join table and use first b/c where returns an array
  #   joins = EventTag.where(tag_id: tag.id)
  #   # join table and return event ids of the matching tag ids
  #   event_ids = joins.map { |entry| entry.event_id }
  #   # event_ids and ptll the event objects from the Event table
  #   results = event_ids.map { |id| Event.find(id)}

  #   render json: results
  # end

  private
  def tags_params
    params.require(:tag).permit(:name, :event_id)
  end



end
