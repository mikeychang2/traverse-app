class TagsController < ApplicationController

 def index
  # p params
  trip = Trip.find(params[:trip_id])
  tags = Tag.where(trip_id: trip.id)

  tag_array = tags.map{|tag| tag.name}

  render json: tag_array.uniq!
 end

  def create
    # p params
    event = Event.find(params[:event_id])
    trip_id = event.trip_id
    tag = event.tags.create(name: tags_params[:name], trip_id: trip_id)
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
