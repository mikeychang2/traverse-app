class PhotosController < ApplicationController
  def create
    event = Event.find(params[:event_id])
    photo = event.photos.create(photos_params)
    photo.update(event_id: event.id)
    render json: photo
  end

  def destroy
    photo = Photo.find(params[:id])
    photo.destroy
    render json: photo
  end

  private
  def photos_params
    params.require(:photo).permit(:url, :event_id)
  end
end
