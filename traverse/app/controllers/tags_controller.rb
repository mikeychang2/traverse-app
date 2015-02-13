class TagsController < ApplicationController
  def index
    # tags = Tag.where
    # render json: tags
  end
  def create
    event = Event.find(params[:id])
    trip_id = event.trip_id
    tag = event.tags.create(tags_params)
    tag.trip_id = trip_id
    # tag = event.tags.create(name: params[:name], trip_id: trip_id)
    render json: tag
  end

  def destroy
    tag = Tag.find(params[:id])
    tag.destroy
  end

  private
  def tags_params
    params.require(:tag).permit(:name, :trip_id, :event_id)
  end



end
