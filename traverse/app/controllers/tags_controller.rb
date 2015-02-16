class TagsController < ApplicationController

 def index
  trip = Trip.find(params[:trip_id])
  events_tags = EventTag.where(trip_id: trip.id)
  tag_ids = events_tags.map{|event| event.tag_id}
  tags = tag_ids.map{|id| Tag.find(id)}
  tags.uniq!
  return render json: tags

 end

  def create
    p params
    event = Event.find(params[:event_id])
    trip_id = event.trip_id
    tag_name = (tags_params[:name]).downcase
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

  private
  def tags_params
    params.require(:tag).permit(:name, :event_id)
  end



end
