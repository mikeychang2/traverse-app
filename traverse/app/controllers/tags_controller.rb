class TagsController < ApplicationController


  def create
    p params
    event = Event.find(params[:event_id])
    trip_id = event.trip_id
    tag = event.tags.create(name: tags_params[:name], event_id: params[:event_id], trip_id: trip_id)
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
